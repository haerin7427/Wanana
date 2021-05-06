package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="jobsEnv")
@XmlAccessorType(XmlAccessType.FIELD)
public class jobEnv {
	
	@XmlElement(name="jobEnvStatus")
	private int jobEnvStatus;
	
	@XmlElement(name="jobEnvNm")
	private String jobEnvNm;
	
	@XmlElement(name="jobEnvCont")
	private String jobEnvCont;

	public int getJobEnvStatus() {
		return jobEnvStatus;
	}

	public void setJobEnvStatus(int jobEnvStatus) {
		this.jobEnvStatus = jobEnvStatus;
	}

	public String getJobEnvNm() {
		return jobEnvNm;
	}

	public void setJobEnvNm(String jobEnvNm) {
		this.jobEnvNm = jobEnvNm;
	}

	public String getJobEnvCont() {
		return jobEnvCont;
	}

	public void setJobEnvCont(String jobEnvCont) {
		this.jobEnvCont = jobEnvCont;
	}

}
