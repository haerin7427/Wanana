package com.project.job.DTO;

import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="chrIntrVals")
public class JobDetailSix {
	private List<jobChr> jobChr; //jobChr
	private List<jobIntrst> jobIntrst; //jobIntrst
	private List<jobVals> jobVals; //jobVals
	

	@XmlElement(name="jobChr")
	public List<jobChr> getJobChr() {
		return jobChr;
	}

	public void setJobChr(List<jobChr> jobChr) {
		this.jobChr = jobChr;
	}

	@XmlElement(name="jobIntrst")
	public List<jobIntrst> getJobIntrst() {
		return jobIntrst;
	}

	public void setJobIntrst(List<jobIntrst> jobIntrst) {
		this.jobIntrst = jobIntrst;
	}

	@XmlElement(name="jobVals")
	public List<jobVals> getJobVals() {
		return jobVals;
	}

	public void setJobVals(List<jobVals> jobVals) {
		this.jobVals = jobVals;
	}

}
