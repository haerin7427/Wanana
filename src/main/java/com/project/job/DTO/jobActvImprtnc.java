package com.project.job.DTO;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="jobActvImprtnc")
@XmlAccessorType(XmlAccessType.FIELD)
public class jobActvImprtnc {

	@XmlElement(name="jobActvImprtncStatus")
	private int jobActvImprtncStatus;
	
	@XmlElement(name="jobActvImprtncNm")
	private String jobActvImprtncNm;
	
	@XmlElement(name="jobActvImprtncCont")
	private String jobActvImprtncCont;

	public int getJobActvImprtncStatus() {
		return jobActvImprtncStatus;
	}

	public void setJobActvImprtncStatus(int jobActvImprtncStatus) {
		this.jobActvImprtncStatus = jobActvImprtncStatus;
	}

	public String getJobActvImprtncNm() {
		return jobActvImprtncNm;
	}

	public void setJobActvImprtncNm(String jobActvImprtncNm) {
		this.jobActvImprtncNm = jobActvImprtncNm;
	}

	public String getJobActvImprtncCont() {
		return jobActvImprtncCont;
	}

	public void setJobActvImprtncCont(String jobActvImprtncCont) {
		this.jobActvImprtncCont = jobActvImprtncCont;
	}

	
}
