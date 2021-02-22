package com.project.portfolio.DTO;

public class Template {
	
	private Integer id;
	private String template_name;
	private String html;
	private String explanation;
	private int isVerticle;
	

	@Override
	public String toString() {
		return "Template [id=" + id + ", template_name=" + template_name + ", html=" + html + ", explanation="
				+ explanation + ", isVerticle=" + isVerticle + "]";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTemplate_name() {
		return template_name;
	}

	public void setTemplate_name(String template_name) {
		this.template_name = template_name;
	}

	public String getHtml() {
		return html;
	}

	public void setHtml(String html) {
		this.html = html;
	}

	public String getExplanation() {
		return explanation;
	}

	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}

	public int getIsVerticle() {
		return isVerticle;
	}

	public void setIsVerticle(int isVerticle) {
		this.isVerticle = isVerticle;
	}
	
	
}
