package com.project.portfolio.DTO;

public class Option {
	
	Integer field_id;
	String list_name;

	@Override
	public String toString() {
		return "Option [field_id=" + field_id + ", list_name=" + list_name + "]";
	}

	public String getList_name() {
		return list_name;
	}

	public void setList_name(String list_name) {
		this.list_name = list_name;
	}

	public Integer getField_id() {
		return field_id;
	}

	public void setField_id(Integer field_id) {
		this.field_id = field_id;
	}
	
	
	
}
