package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="relCertList")
@XmlAccessorType(XmlAccessType.FIELD)
public class relCertList {
	
	@XmlElement(name="certNm")
	private String certNm;

	public String getCertNm() {
		return certNm;
	}

	public void setCertNm(String certNm) {
		this.certNm = certNm;
	}
	
}
