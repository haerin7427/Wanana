package com.project.job.DTO;

import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="way")
public class JobDetailThree {
	private String technKnow;
	private List<edubg> edubg; //edubg
	private List<schDpt> schDpt; //schDpt
	private List<relMajorList> relMajorList; //relMajorList
	private List<relOrgList> relOrgList; //relJobList
	private List<relCertList> relCertList; //relCerList
	
	
	public String getTechnKnow() {
		return technKnow;
	}

	public void setTechnKnow(String technKnow) {
		this.technKnow = technKnow;
	}

	@XmlElement(name="edubg")
	public List<edubg> getEdubg() {
		return edubg;
	}

	public void setEdubg(List<edubg> edubg) {
		this.edubg = edubg;
	}

	@XmlElement(name="schDpt")
	public List<schDpt> getSchDpt() {
		return schDpt;
	}

	public void setSchDpt(List<schDpt> schDpt) {
		this.schDpt = schDpt;
	}

	@XmlElement(name="relOrgList")
	public List<relOrgList> getRelOrgList() {
		return relOrgList;
	}

	public void setRelOrgList(List<relOrgList> relOrgList) {
		this.relOrgList = relOrgList;
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
}
