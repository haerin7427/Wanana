package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="jobChr")
@XmlAccessorType(XmlAccessType.FIELD)
public class jobChr {
	
	@XmlElement(name="jobChrStatus")
	private int jobChrStatus;
	
	@XmlElement(name="jobChrNm")
	private String jobChrNm;
	
	@XmlElement(name="jobChrCont")
	private String jobChrCont;

	public int getJobChrStatus() {
		return jobChrStatus;
	}

	public void setJobChrStatus(int jobChrStatus) {
		this.jobChrStatus = jobChrStatus;
	}

	public String getJobChrNm() {
		return jobChrNm;
	}

	public void setJobChrNm(String jobChrNm) {
		this.jobChrNm = jobChrNm;
	}

	public String getJobChrCont() {
		return jobChrCont;
	}

	public void setJobChrCont(String jobChrCont) {
		this.jobChrCont = jobChrCont;
	}

}
