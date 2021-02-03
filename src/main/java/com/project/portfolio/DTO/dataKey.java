package com.project.portfolio.DTO;

public class dataKey {
	Integer user_id;
	Integer item_id;
	
	@Override
	public String toString() {
		return "dataKey [user_id=" + user_id + ", item_id=" + item_id + "]";
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public Integer getItem_id() {
		return item_id;
	}

	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}
	
	

}