package com.project.job.DTO;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="relOrgList")
@XmlAccessorType(XmlAccessType.FIELD)
public class relOrgList {
	
	@XmlElement(name="orgSiteUrl")
	private String orgSiteUrl;
	
	@XmlElement(name="orgNm")
	private String orgNm;

	public String getOrgSiteUrl() {
		return orgSiteUrl;
	}

	public void setOrgSiteUrl(String orgSiteUrl) {
		this.orgSiteUrl = orgSiteUrl;
	}

	public String getOrgNm() {
		return orgNm;
	}

	public void setOrgNm(String orgNm) {
		this.orgNm = orgNm;
	}
}
