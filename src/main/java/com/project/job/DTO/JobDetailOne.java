package com.project.job.DTO;

import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import com.project.job.DTO.JobListDetail;

@XmlRootElement(name="jobSum")
public class JobDetailOne {
	private String jobSmclNm;
	private String jobSum;
	private String way;
	private String sal;
	private String jobSatis;
	private String jobProspect;
	private String jobStatus;
	private String jobAbil;
	private String knowldg;
	private String jobEnv;
	private String jobChr;
	private String jobIntrst;
	private String jobVals;
	private String jobActvImprtncs;
	private String jobActvLvls;
	private List<relMajorList> relMajorList; //relMajorList
	private List<relCertList> relCertList; //relCerList
	private List<relJobList> relJobList; //relJobList
	

	public String getJobSmclNm() {
		return jobSmclNm;
	}

	public void setJobSmclNm(String jobSmclNm) {
		this.jobSmclNm = jobSmclNm;
	}

	public String getJobSum() {
		return jobSum;
	}

	public void setJobSum(String jobSum) {
		this.jobSum = jobSum;
	}

	public String getWay() {
		return way;
	}

	public void setWay(String way) {
		this.way = way;
	}

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

	public String getJobStatus() {
		return jobStatus;
	}

	public void setJobStatus(String jobStatus) {
		this.jobStatus = jobStatus;
	}

	public String getJobAbil() {
		return jobAbil;
	}

	public void setJobAbil(String jobAbil) {
		this.jobAbil = jobAbil;
	}

	public String getKnowldg() {
		return knowldg;
	}

	public void setKnowldg(String knowldg) {
		this.knowldg = knowldg;
	}

	public String getJobEnv() {
		return jobEnv;
	}

	public void setJobEnv(String jobEnv) {
		this.jobEnv = jobEnv;
	}

	public String getJobChr() {
		return jobChr;
	}

	public void setJobChr(String jobChr) {
		this.jobChr = jobChr;
	}

	public String getJobIntrst() {
		return jobIntrst;
	}

	public void setJobIntrst(String jobIntrst) {
		this.jobIntrst = jobIntrst;
	}

	public String getJobVals() {
		return jobVals;
	}

	public void setJobVals(String jobVals) {
		this.jobVals = jobVals;
	}

	public String getJobActvImprtncs() {
		return jobActvImprtncs;
	}

	public void setJobActvImprtncs(String jobActvImprtncs) {
		this.jobActvImprtncs = jobActvImprtncs;
	}

	public String getJobActvLvls() {
		return jobActvLvls;
	}

	public void setJobActvLvls(String jobActvLvls) {
		this.jobActvLvls = jobActvLvls;
	}

	@XmlElement(name="relMajorList")
	public List<relMajorList> getRelMajorList() {
		return relMajorList;
	}

	public void setRelMajorList(List<relMajorList> relMajorList) {
		this.relMajorList = relMajorList;
	}

	@XmlElement(name="relCertList")
	public List<relCertList> getRelCertList() {
		return relCertList;
	}

	public void setRelCertList(List<relCertList> relCertList) {
		this.relCertList = relCertList;
	}

	@XmlElement(name="relJobList")
	public List<relJobList> getRelJobList() {
		return relJobList;
	}

	public void setRelJobList(List<relJobList> relJobList) {
		this.relJobList = relJobList;
	}
	
	
}
