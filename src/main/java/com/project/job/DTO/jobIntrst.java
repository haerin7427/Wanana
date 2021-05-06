package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="jobIntrst")
@XmlAccessorType(XmlAccessType.FIELD)
public class jobIntrst {
	
	@XmlElement(name="intrstStatus")
	private int intrstStatus;
	
	@XmlElement(name="intrstNm")
	private String intrstNm;
	
	@XmlElement(name="intrstCont")
	private String intrstCont;

	public int getIntrstStatus() {
		return intrstStatus;
	}

	public void setIntrstStatus(int intrstStatus) {
		this.intrstStatus = intrstStatus;
	}

	public String getIntrstNm() {
		return intrstNm;
	}

	public void setIntrstNm(String intrstNm) {
		this.intrstNm = intrstNm;
	}

	public String getIntrstCont() {
		return intrstCont;
	}

	public void setIntrstCont(String intrstCont) {
		this.intrstCont = intrstCont;
	}

	
}
