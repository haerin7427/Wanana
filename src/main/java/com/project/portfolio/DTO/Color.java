package com.project.portfolio.DTO;

public class Color {

	int id;
	int template_id;
	String color1;
	String color2;
	@Override
	public String toString() {
		return "Color [id=" + id + ", template_id=" + template_id + ", color1=" + color1 + ", color2=" + color2 + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTemplate_id() {
		return template_id;
	}
	public void setTemplate_id(int template_id) {
		this.template_id = template_id;
	}
	public String getColor1() {
		return color1;
	}
	public void setColor1(String color1) {
		this.color1 = color1;
	}
	public String getColor2() {
		return color2;
	}
	public void setColor2(String color2) {
		this.color2 = color2;
	}
	
	
}
