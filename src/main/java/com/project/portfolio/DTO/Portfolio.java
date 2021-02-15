package com.project.portfolio.DTO;

import java.sql.Date;
import java.sql.Timestamp;

public class Portfolio {
	
	Integer id;
	Integer user_id;
	String title;
	Integer isPublic;
	Integer template_id;
	String color;
	String font;
	String password;
	String html;
	Timestamp create_date;
	Timestamp update_date;
//	Date create_date;
//	Date update_date;
	

	

	@Override
	public String toString() {
		return "Portfolio [id=" + id + ", user_id=" + user_id + ", title=" + title + ", isPublic=" + isPublic
				+ ", template_id=" + template_id + ", color=" + color + ", font=" + font + ", password=" + password
				+ ", html=" + html + ", create_date=" + create_date + ", update_date=" + update_date + "]";
	}



	public Timestamp getCreate_date() {
		return create_date;
	}





	public void setCreate_date(Timestamp create_date) {
		this.create_date = create_date;
	}






	public Timestamp getUpdate_date() {
		return update_date;
	}






	public void setUpdate_date(Timestamp update_date) {
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


	public String getColor() {
		return color;
	}



	public void setColor(String color) {
		this.color = color;
	}



	public String getFont() {
		return font;
	}



	public void setFont(String font) {
		this.font = font;
	}



	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
