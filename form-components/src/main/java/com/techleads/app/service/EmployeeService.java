package com.techleads.app.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.techleads.app.model.Qualification;
import com.techleads.app.model.SkillSet;

@Service
public class EmployeeService {
	
	
	public List<Qualification> qualifications(){
		List<Qualification> list = Arrays.asList(new Qualification(10, "BCA"), new Qualification(11, "MCA"), new Qualification(12, "BTech"), new Qualification(13, "MTech"), new Qualification(14, "MBA"));
		return list;
	}

//	public SkillSet[] skillSets() {
//
//		SkillSet s1 = new SkillSet(10, "Java");
//		SkillSet s2 = new SkillSet(11, "SpringBoot");
//
//		SkillSet s3 = new SkillSet(12, "Miroservices");
//		SkillSet s4 = new SkillSet(13, "SQL");
//		SkillSet s5 = new SkillSet(14, "Restful Webservices");
//		SkillSet s6 = new SkillSet(15, "Sringboot MVC");
//		SkillSet s7 = new SkillSet(16, "Sringboot Restful Webservices");
//		SkillSet s8 = new SkillSet(17, "Security Vulnerabilities");
//		List<SkillSet> list = new ArrayList<>();
//		SkillSet[] skillSetArray = {s1,s2,s3,s4,s5,s6,s7,s8};
//		list.add(s1);
//		list.add(s2);
//		list.add(s3);
//		list.add(s4);
//		list.add(s5);
//		list.add(s6);
//		list.add(s7);
//		list.add(s8);
//
//		return skillSetArray;
//	}
	
	public List<SkillSet> skillSets() {
		List<SkillSet> skillSet = List.of(
				new SkillSet(10, "Java"), new SkillSet(11, "SpringBoot"),
				new SkillSet(12, "Miroservices"), new SkillSet(13, "SQL"),
				new SkillSet(14, "Restful Webservices"),
				new SkillSet(15, "Sringboot MVC"), new SkillSet(16, "Sringboot Restful Webservices"),
				new SkillSet(17, "Security Vulnerabilities"));

		return skillSet;
	}
	

}
