 package com.project.portfolio.DTO;

import java.sql.Date;
import java.sql.Timestamp;

public class Portfolio {
	
	Integer id;
	Integer user_id;
	String title;
	Integer isPublic;
	Integer template_id;
	Integer isVerticle;
	String html;
	Integer color;
	String font;
	String password;
	Date create_date;
	Date update_date;

	

	@Override
	public String toString() {
		return "Portfolio [id=" + id + ", user_id=" + user_id + ", title=" + title + ", isPublic=" + isPublic
				+ ", template_id=" + template_id + ", isVerticle=" + isVerticle + ", html=" + html + ", color=" + color
				+ ", font=" + font + ", password=" + password + ", create_date=" + create_date + ", update_date="
				+ update_date + "]";
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



	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getIsVerticle() {
		return isVerticle;
	}

	public void setIsVerticle(Integer isVerticle) {
		this.isVerticle = isVerticle;
	}
	
	
}
