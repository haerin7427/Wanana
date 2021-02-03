package com.project.portfolio.DTO;

public class Data {
	
	Integer id;
	Integer user_id;
	Integer portfolio_id;
	Integer item_id;
	Integer data_no;
	
	String item_name;	
	String content1;
	String content2;
	String content3;
	String content4;
	String content5;
	String content6;
	

	@Override
	public String toString() {
		return "Data [id=" + id + ", user_id=" + user_id + ", portfolio_id=" + portfolio_id + ", item_id=" + item_id
				+ ", data_no=" + data_no + ", item_name=" + item_name + ", content1=" + content1 + ", content2="
				+ content2 + ", content3=" + content3 + ", content4=" + content4 + ", content5=" + content5
				+ ", content6=" + content6 + "]";
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUser_id() {
		return user_id;
	}


	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}


	public Integer getPortfolio_id() {
		return portfolio_id;
	}


	public void setPortfolio_id(Integer portfolio_id) {
		this.portfolio_id = portfolio_id;
	}


	public Integer getItem_id() {
		return item_id;
	}


	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}


	public Integer getData_no() {
		return data_no;
	}


	public void setData_no(Integer data_no) {
		this.data_no = data_no;
	}


	public String getItem_name() {
		return item_name;
	}


	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}


	public String getContent1() {
		return content1;
	}


	public void setContent1(String content1) {
		this.content1 = content1;
	}


	public String getContent2() {
		return content2;
	}


	public void setContent2(String content2) {
		this.content2 = content2;
	}


	public String getContent3() {
		return content3;
	}


	public void setContent3(String content3) {
		this.content3 = content3;
	}


	public String getContent4() {
		return content4;
	}


	public void setContent4(String content4) {
		this.content4 = content4;
	}


	public String getContent5() {
		return content5;
	}


	public void setContent5(String content5) {
		this.content5 = content5;
	}


	public String getContent6() {
		return content6;
	}


	public void setContent6(String content6) {
		this.content6 = content6;
	}
	
	

}