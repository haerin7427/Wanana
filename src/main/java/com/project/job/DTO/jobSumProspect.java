package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="jobSumProspect")
@XmlAccessorType(XmlAccessType.FIELD)
public class jobSumProspect {
	
	@XmlElement(name="jobProspectNm")
	private String jobProspectNm;
	
	@XmlElement(name="jobProspectRatio")
	private String jobProspectRatio;
	
	@XmlElement(name="jobProspectInqYr")
	private int jobProspectInqYr;

	public String getJobProspectNm() {
		return jobProspectNm;
	}

	public void setJobProspectNm(String jobProspectNm) {
		this.jobProspectNm = jobProspectNm;
	}

	public String getJobProspectRatio() {
		return jobProspectRatio;
	}

	public void setJobProspectRatio(String jobProspectRatio) {
		this.jobProspectRatio = jobProspectRatio;
	}

	public int getJobProspectInqYr() {
		return jobProspectInqYr;
	}

	public void setJobProspectInqYr(int jobProspectInqYr) {
		this.jobProspectInqYr = jobProspectInqYr;
	}

	
}
