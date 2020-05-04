package com.techleads.app.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Employee {
	
	private Integer id;
	private String name;
	
	//Radio button true false
	private String countryRadio;
	
	
	//Multi-select dropdown start
	private List<SkillSet> skillSetList;
	private String[] skillSetOptionsValuesMultiDropdown;
	//Multi-select dropdown end
	
	//Single-select dropdown start
	private List<Qualification> qualificationList;
	private String qualification;
	//Single-select dropdown end
	
	//textArea
	private String notes;
	
	//Multi-selection checkboxes
	private String[] bandsMultiSelectionCheckBoxes;
	private List<Bands> bandsList;

}
