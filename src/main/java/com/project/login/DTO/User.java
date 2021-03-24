package com.project.login.DTO;


public class User {
	
	private Integer id;

	private String name;

	private String user_id;

	private String pwd;

	private String email_address;
	
	private String gender;
	
	private String phone_number;

	private Boolean social;
	
	private Integer admin;
	

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", user_id=" + user_id + ", pwd=" + pwd + ", email_address="
				+ email_address + ", gender=" + gender + ", phone_number=" + phone_number + ", social=" + social
				+ ", admin=" + admin + "]";
	}

	public Boolean getSocial() {
		return social;
	}

	public void setSocial(Boolean social) {
		this.social = social;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail_address() {
		return email_address;
	}

	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public Integer getAdmin() {
		return admin;
	}

	public void setAdmin(Integer admin) {
		this.admin = admin;
	}

}