package com.techleads.app;

import com.techleads.app.model.SkillSet;

public class Test {

	public static void main(String[] args) {
//		Qualification[] qualificationList=new  Qualification[3];
//		Qualification q1, q2,q3;
//		q1=new Qualification(101, "Java");
//		q2=new Qualification(101, "SpringBoot");
//		q3=new Qualification(101, "Microservices");
//		qualificationList[0]=q1;
//		qualificationList[1]=q2;
//		qualificationList[2]=q3;
		
		SkillSet q1, q2,q3;
		q1=new SkillSet(101, "Java");
		q2=new SkillSet(101, "SpringBoot");
		q3=new SkillSet(101, "Microservices");
		
		SkillSet[] skillSets= {q1,q2,q3};
		
		for (SkillSet skillSet : skillSets) {
			System.out.println(skillSet.getId()+" "+skillSet.getName());
		}

	}

}
