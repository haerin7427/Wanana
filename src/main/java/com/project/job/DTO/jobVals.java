package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="jobVals")
@XmlAccessorType(XmlAccessType.FIELD)
public class jobVals {
	
	@XmlElement(name="valsStatus")
	private int valsStatus;
	
	@XmlElement(name="valsNm")
	private String valsNm;
	
	@XmlElement(name="valsCont")
	private String valsCont;

	public int getValsStatus() {
		return valsStatus;
	}

	public void setValsStatus(int valsStatus) {
		this.valsStatus = valsStatus;
	}

	public String getValsNm() {
		return valsNm;
	}

	public void setValsNm(String valsNm) {
		this.valsNm = valsNm;
	}

	public String getValsCont() {
		return valsCont;
	}

	public void setValsCont(String valsCont) {
		this.valsCont = valsCont;
	}

	
}
