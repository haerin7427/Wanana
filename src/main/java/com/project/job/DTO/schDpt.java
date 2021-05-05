package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="schDpt")
@XmlAccessorType(XmlAccessType.FIELD)
public class schDpt {
	
	@XmlElement(name="cultLangDpt")
	private int cultLangDpt;
	
	@XmlElement(name="socDpt")
	private int socDpt;
	
	@XmlElement(name="eduDpt")
	private int eduDpt;
	
	@XmlElement(name="engnrDpt")
	private int engnrDpt;
	
	@XmlElement(name="natrlDpt")
	private int natrlDpt;
	
	@XmlElement(name="mediDpt")
	private int mediDpt;
	
	@XmlElement(name="artphyDpt")
	private int artphyDpt;

	public int getCultLangDpt() {
		return cultLangDpt;
	}

	public void setCultLangDpt(int cultLangDpt) {
		this.cultLangDpt = cultLangDpt;
	}

	public int getSocDpt() {
		return socDpt;
	}

	public void setSocDpt(int socDpt) {
		this.socDpt = socDpt;
	}

	public int getEduDpt() {
		return eduDpt;
	}

	public void setEduDpt(int eduDpt) {
		this.eduDpt = eduDpt;
	}

	public int getEngnrDpt() {
		return engnrDpt;
	}

	public void setEngnrDpt(int engnrDpt) {
		this.engnrDpt = engnrDpt;
	}

	public int getNatrlDpt() {
		return natrlDpt;
	}

	public void setNatrlDpt(int natrlDpt) {
		this.natrlDpt = natrlDpt;
	}

	public int getMediDpt() {
		return mediDpt;
	}

	public void setMediDpt(int mediDpt) {
		this.mediDpt = mediDpt;
	}

	public int getArtphyDpt() {
		return artphyDpt;
	}

	public void setArtphyDpt(int artphyDpt) {
		this.artphyDpt = artphyDpt;
	}
}
