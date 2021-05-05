package com.project.job.DTO;

import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="salProspect")
public class JobDetailFour {
	private String sal;
	private String jobSatis;
	private String jobProspect;
	private List<jobSumProspect> jobSumProspect; //edubg
	
	public String getSal() {
		return sal;
	}

	public void setSal(String sal) {
		this.sal = sal;
	}

	public String getJobSatis() {
		return jobSatis;
	}

	public void setJobSatis(String jobSatis) {
		this.jobSatis = jobSatis;
	}

	public String getJobProspect() {
		return jobProspect;
	}

	public void setJobProspect(String jobProspect) {
		this.jobProspect = jobProspect;
	}

	@XmlElement(name="jobSumProspect")
	public List<jobSumProspect> getJobSumProspect() {
		return jobSumProspect;
	}

	public void setJobSumProspect(List<jobSumProspect> jobSumProspect) {
		this.jobSumProspect = jobSumProspect;
	}

}
