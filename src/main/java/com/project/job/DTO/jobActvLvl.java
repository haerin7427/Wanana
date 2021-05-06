package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="jobActvLvl")
@XmlAccessorType(XmlAccessType.FIELD)
public class jobActvLvl {
	
	@XmlElement(name="jobActvLvlStatus")
	private int jobActvLvlStatus;
	
	@XmlElement(name="jobActvLvlNm")
	private String jobActvLvlNm;
	
	@XmlElement(name="jobActvLvlCont")
	private String jobActvLvlCont;

	public int getJobActvLvlStatus() {
		return jobActvLvlStatus;
	}

	public void setJobActvLvlStatus(int jobActvLvlStatus) {
		this.jobActvLvlStatus = jobActvLvlStatus;
	}

	public String getJobActvLvlNm() {
		return jobActvLvlNm;
	}

	public void setJobActvLvlNm(String jobActvLvlNm) {
		this.jobActvLvlNm = jobActvLvlNm;
	}

	public String getJobActvLvlCont() {
		return jobActvLvlCont;
	}

	public void setJobActvLvlCont(String jobActvLvlCont) {
		this.jobActvLvlCont = jobActvLvlCont;
	}

}
