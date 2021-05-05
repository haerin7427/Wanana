package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="relMajorList")
@XmlAccessorType(XmlAccessType.FIELD)
public class relMajorList {
	
	@XmlElement(name="majorCd")
	private String majorCd;
	
	@XmlElement(name="majorNm")
	private String majorNm;

	public String getMajorCd() {
		return majorCd;
	}

	public void setMajorCd(String majorCd) {
		this.majorCd = majorCd;
	}

	public String getMajorNm() {
		return majorNm;
	}

	public void setMajorNm(String majorNm) {
		this.majorNm = majorNm;
	}
	
}
