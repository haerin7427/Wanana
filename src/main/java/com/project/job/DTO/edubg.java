package com.project.job.DTO;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
 
@XmlRootElement(name="edubg")
@XmlAccessorType(XmlAccessType.FIELD)
public class edubg {
	
	@XmlElement(name="edubgMgraduUndr")
	private int edubgMgraduUndr;
	
	@XmlElement(name="edubgHgradu")
	private int edubgHgradu;
	
	@XmlElement(name="edubgCgraduUndr")
	private int edubgCgraduUndr;
	
	@XmlElement(name="edubgUgradu")
	private int edubgUgradu;
	
	@XmlElement(name="edubgGgradu")
	private int edubgGgradu;
	
	@XmlElement(name="edubgDgradu")
	private int edubgDgradu;

	public int getEdubgMgraduUndr() {
		return edubgMgraduUndr;
	}

	public void setEdubgMgraduUndr(int edubgMgraduUndr) {
		this.edubgMgraduUndr = edubgMgraduUndr;
	}

	public int getEdubgHgradu() {
		return edubgHgradu;
	}

	public void setEdubgHgradu(int edubgHgradu) {
		this.edubgHgradu = edubgHgradu;
	}

	public int getEdubgCgraduUndr() {
		return edubgCgraduUndr;
	}

	public void setEdubgCgraduUndr(int edubgCgraduUndr) {
		this.edubgCgraduUndr = edubgCgraduUndr;
	}

	public int getEdubgUgradu() {
		return edubgUgradu;
	}

	public void setEdubgUgradu(int edubgUgradu) {
		this.edubgUgradu = edubgUgradu;
	}

	public int getEdubgGgradu() {
		return edubgGgradu;
	}

	public void setEdubgGgradu(int edubgGgradu) {
		this.edubgGgradu = edubgGgradu;
	}

	public int getEdubgDgradu() {
		return edubgDgradu;
	}

	public void setEdubgDgradu(int edubgDgradu) {
		this.edubgDgradu = edubgDgradu;
	}
	
}
