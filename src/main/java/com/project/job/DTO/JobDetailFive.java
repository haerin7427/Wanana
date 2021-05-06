package com.project.job.DTO;

import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="ablKnwEnv")
public class JobDetailFive {
	
	private List<jobAbil> jobAbil; //jobAbil
	private List<Knwldg> Knwldg; //Knwldg
	private List<jobEnv> jobEnv;//jobEnv
	
	@XmlElement(name="jobAbil")
	public List<jobAbil> getJobAbil() {
		return jobAbil;
	}
	public void setJobAbil(List<jobAbil> jobAbil) {
		this.jobAbil = jobAbil;
	}
	
	@XmlElement(name="Knwldg")
	public List<Knwldg> getKnwldg() {
		return Knwldg;
	}
	public void setKnwldg(List<Knwldg> knwldg) {
		Knwldg = knwldg;
	}
	
	@XmlElement(name="jobsEnv")
	public List<jobEnv> getJobEnv() {
		return jobEnv;
	}
	public void setJobEnv(List<jobEnv> jobEnv) {
		this.jobEnv = jobEnv;
	} 
}
