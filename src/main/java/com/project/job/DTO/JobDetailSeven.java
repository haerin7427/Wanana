package com.project.job.DTO;

import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="jobActv")
public class JobDetailSeven {
	private List<jobActvImprtnc> jobActvImprtnc; //jobActvImprtnc
	private List<jobActvLvl> jobActvLvl; //jobActvLvl
	
	@XmlElement(name="jobActvImprtnc")
	public List<jobActvImprtnc> getJobActvImprtnc() {
		return jobActvImprtnc;
	}


	public void setJobActvImprtnc(List<jobActvImprtnc> jobActvImprtnc) {
		this.jobActvImprtnc = jobActvImprtnc;
	}


	@XmlElement(name="jobActvLvl")
	public List<jobActvLvl> getJobActvLvl() {
		return jobActvLvl;
	}


	public void setJobActvLvl(List<jobActvLvl> jobActvLvl) {
		this.jobActvLvl = jobActvLvl;
	}
}
