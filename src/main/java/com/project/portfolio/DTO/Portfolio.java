 package com.project.portfolio.DTO;

import java.sql.Date;

public class Portfolio {
	
	Integer id;
	String title;
	Integer isPublic;
	Integer template_id;
	String html;
	Integer user_id;
	Integer color;
	String font;
	Date create_date;
	Date update_date;


	@Override
	public String toString() {
		return "Portfolio [id=" + id + ", title=" + title + ", isPublic=" + isPublic + ", template_id=" + template_id
				+ ", html=" + html + ", user_id=" + user_id + ", color=" + color + ", font=" + font + ", create_date="
				+ create_date + ", update_date=" + update_date + "]";
	}



	public Date getCreate_date() {
		return create_date;
	}



	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}



	public Date getUpdate_date() {
		return update_date;
	}



	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}



	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	

	public Integer getIsPublic() {
		return isPublic;
	}



	public void setIsPublic(Integer isPublic) {
		this.isPublic = isPublic;
	}



	public Integer getTemplate_id() {
		return template_id;
	}

	public void setTemplate_id(Integer template_id) {
		this.template_id = template_id;
	}
	


	public String getHtml() {
		return html;
	}



	public void setHtml(String html) {
		this.html = html;
	}



	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}



	public Integer getColor() {
		return color;
	}



	public void setColor(Integer color) {
		this.color = color;
	}



	public String getFont() {
		return font;
	}



	public void setFont(String font) {
		this.font = font;
	}
	
	
	
}
