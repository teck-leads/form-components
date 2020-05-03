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
	private String countryRadio;
	//private List<SkillSet> skillSetList;
	private String[] skillSetArray;
	private List<Qualification> qualificationList;
	private String qualification;
	private String notes;

}
