package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="jobList")
@XmlAccessorType(XmlAccessType.FIELD)
public class JobListDetail {
	
	@XmlElement(name="jobClcd")
	private String jobClcd;
	
	@XmlElement(name="jobClcdNM")
	private String jobClcdNM;
	
	@XmlElement(name="jobCd")
	private String jobCd;
	
	@XmlElement(name="jobNm")
	private String jobNm;

	public String getJobClcd() {
		return jobClcd;
	}

	public void setJobClcd(String jobClcd) {
		this.jobClcd = jobClcd;
	}

	public String getJobClcdNM() {
		return jobClcdNM;
	}

	public void setJobClcdNM(String jobClcdNM) {
		this.jobClcdNM = jobClcdNM;
	}

	public String getJobCd() {
		return jobCd;
	}

	public void setJobCd(String jobCd) {
		this.jobCd = jobCd;
	}

	public String getJobNm() {
		return jobNm;
	}

	public void setJobNm(String jobNm) {
		this.jobNm = jobNm;
	}
}
