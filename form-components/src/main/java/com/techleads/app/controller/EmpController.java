package com.techleads.app.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.techleads.app.model.Bands;
import com.techleads.app.model.Employee;
import com.techleads.app.model.Qualification;
import com.techleads.app.model.SkillSet;
import com.techleads.app.service.EmployeeService;

@Controller
public class EmpController {
	@Autowired
	private EmployeeService service;

	@ModelAttribute("qualificationList")
	public List<Qualification> qualifications() {
		return service.qualifications();
	}
	@ModelAttribute("skillSetList")
	public List<SkillSet> skillSets(){
		return service.skillSets();
	}
	
	@ModelAttribute("bands")
	public List<Bands> bands() {
		 return service.bands();
	}

	@GetMapping(value = { "/register" })
	public String empformPage(@ModelAttribute("empCmd") Employee employee) {
		employee.setCountryRadio("india");
		//employee.setQualificationList(service.qualifications());
		return "empRegister";
	}

	@PostMapping(value = { "/register" })
	public String processRegistration(@ModelAttribute("empCmd") Employee employee, BindingResult result, Model model) {
	
		
		
		//Multi-dropdwon: Set Options values Id to SkillSet List of Employee object Start
		List<SkillSet> skillSets = service.skillSets();
		String[] skillSetList = employee.getSkillSetOptionsValuesMultiDropdown();
		List<SkillSet> newSkillSet=new ArrayList<>();
		try {
			if(!StringUtils.isEmpty(skillSetList)) {
				for (String optionValueId : skillSetList) {
					for (SkillSet skillSet : skillSets) {
						if(skillSet.getId()==Integer.parseInt(optionValueId)){
							SkillSet sk=new SkillSet();
							sk.setId(skillSet.getId());
							sk.setName(skillSet.getName());
							newSkillSet.add(sk);
						}
					}
				}
			}
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		employee.setSkillSetList(newSkillSet);
		//Multi-dropdwon: Set Options values Id to SkillSet List of Employee object End
		
		
		//single-dropdwon: Set Options values Id to qualification property of Employee object Start
		List<Qualification> qualifications = service.qualifications();
		String qulfyName = "";
		if (!StringUtils.isEmpty(employee.getQualification())) {
			for (Qualification qualification : qualifications) {
				if (qualification.getId() == (Integer.parseInt(employee.getQualification()))) {
					qulfyName = qualification.getName();
					employee.setQualification(qulfyName);
					break;
				}
			}
		}
		//single-dropdwon: Set Options values Id to qualification property of Employee object End
		
		//Multi-select checkboxes String[] bandsMultiSelectionCheckBoxes IDs set to bandsList Start
		List<Bands> newBands = new ArrayList<Bands>();
		List<Bands> bands = service.bands();
		String[] bandsMultiSelectionCheckBoxes = employee.getBandsMultiSelectionCheckBoxes();
		if (!StringUtils.isEmpty(bandsMultiSelectionCheckBoxes)) {
			for (String bandId : bandsMultiSelectionCheckBoxes) {
				for (Bands band : bands) {
					if (band.getId() == Integer.parseInt(bandId)) {
						Bands bnd = new Bands();
						bnd.setId(band.getId());
						bnd.setName(band.getName());
						newBands.add(bnd);
					}
				}
			}
		}
		employee.setBandsList(newBands);
		//Multi-select checkboxes String[] bandsMultiSelectionCheckBoxes IDs set to bandsList End
		
		
		model.addAttribute("employee", employee);

		return "result";
	}
	
}
