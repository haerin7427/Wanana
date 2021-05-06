package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="Knwldg")
@XmlAccessorType(XmlAccessType.FIELD)
public class Knwldg {
	
	@XmlElement(name="knwldgStatus")
	private int knwldgStatus;
	
	@XmlElement(name="knwldgNm")
	private String knwldgNm;
	
	@XmlElement(name="knwldgCont")
	private String knwldgCont;

	public int getKnwldgStatus() {
		return knwldgStatus;
	}

	public void setKnwldgStatus(int knwldgStatus) {
		this.knwldgStatus = knwldgStatus;
	}

	public String getKnwldgNm() {
		return knwldgNm;
	}

	public void setKnwldgNm(String knwldgNm) {
		this.knwldgNm = knwldgNm;
	}

	public String getKnwldgCont() {
		return knwldgCont;
	}

	public void setKnwldgCont(String knwldgCont) {
		this.knwldgCont = knwldgCont;
	}
}
