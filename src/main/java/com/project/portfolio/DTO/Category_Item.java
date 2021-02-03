package com.project.portfolio.DTO;

public class Category_Item {
	private Integer category_id;
	private String category_name;
	private Integer item_id;
	private String item_name;
	
	@Override
	public String toString() {
		return "Category_Item [category_id=" + category_id + ", category_name=" + category_name + ", item_id=" + item_id
				+ ", item_name=" + item_name + "]";
	}
	
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public Integer getItem_id() {
		return item_id;
	}
	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	
	
	

}
