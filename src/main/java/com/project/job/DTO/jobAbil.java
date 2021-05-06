package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="jobAbil")
@XmlAccessorType(XmlAccessType.FIELD)
public class jobAbil {
	
	@XmlElement(name="jobAblStatus")
	private int jobAblStatus;
	
	@XmlElement(name="jobAblNm")
	private String jobAblNm;
	
	@XmlElement(name="jobAblCont")
	private String jobAblCont;

	public int getJobAblStatus() {
		return jobAblStatus;
	}

	public void setJobAblStatus(int jobAblStatus) {
		this.jobAblStatus = jobAblStatus;
	}

	public String getJobAblNm() {
		return jobAblNm;
	}

	public void setJobAblNm(String jobAblNm) {
		this.jobAblNm = jobAblNm;
	}

	public String getJobAblCont() {
		return jobAblCont;
	}

	public void setJobAblCont(String jobAblCont) {
		this.jobAblCont = jobAblCont;
	}

	
}
