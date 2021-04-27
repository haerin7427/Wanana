package com.project.job.DTO;

import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import com.project.job.DTO.JobListDetail;

@XmlRootElement(name="jobsList")
public class JobListDTO {
	
	private List<JobListDetail> jobInfo;
	
	//@XmlElementWrapper(name="jobList")
	@XmlElement(name="jobList")
	public List<JobListDetail> getJobInfo(){
		return jobInfo;
	}

	public void setJobInfo(List<JobListDetail> jobInfo) {
		this.jobInfo=jobInfo;
	}
}
