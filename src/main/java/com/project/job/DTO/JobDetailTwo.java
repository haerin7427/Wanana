package com.project.job.DTO;

import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="jobsDo")
public class JobDetailTwo {
	private String jobSum;
	private String execJob;
	private String jobVideo;
	private List<relJobList> relJobList; //relJobList
	

	public String getJobSum() {
		return jobSum;
	}

	public void setJobSum(String jobSum) {
		this.jobSum = jobSum;
	}

	public String getExecJob() {
		return execJob;
	}

	public void setExecJob(String execJob) {
		this.execJob = execJob;
	}

	public String getJobVideo() {
		return jobVideo;
	}

	public void setJobVideo(String jobVideo) {
		this.jobVideo = jobVideo;
	}

	@XmlElement(name="relJobList")
	public List<relJobList> getRelJobList() {
		return relJobList;
	}

	public void setRelJobList(List<relJobList> relJobList) {
		this.relJobList = relJobList;
	}
	
	
}
