package com.project.portfolio.DTO;


public class Item {
	

	Integer item_id;
	
	Integer data_no;
	
	Integer field_id;

	String field_name;

	String field_type;
	
	Integer isEssential;

	
	@Override
	public String toString() {
		return "Item [item_id=" + item_id + ", data_no=" + data_no + ", field_id=" + field_id + ", field_name="
				+ field_name + ", field_type=" + field_type + ", isEssential=" + isEssential + "]";
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
	
	

	public Integer getField_id() {
		return field_id;
	}


	public void setField_id(Integer field_id) {
		this.field_id = field_id;
	}


	public String getField_name() {
		return field_name;
	}

	public void setField_name(String field_name) {
		this.field_name = field_name;
	}

	public String getField_type() {
		return field_type;
	}

	public void setField_type(String field_type) {
		this.field_type = field_type;
	}

	public Integer getIsEssential() {
		return isEssential;
	}

	public void setIsEssential(Integer isEssential) {
		this.isEssential = isEssential;
	}
	
	

	
}