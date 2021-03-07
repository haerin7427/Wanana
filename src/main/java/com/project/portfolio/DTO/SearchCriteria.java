package com.project.portfolio.DTO;


public class SearchCriteria extends Criteria{
	
	private String searchType;
	private String keyword;
	private String filterType;
	private int user_id;
	private int form_id;

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getFilterType() {
		return filterType;
	}

	public void setFilterType(String filterType) {
		this.filterType = filterType;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	public int getForm_id() {
		return user_id;
	}

	public void setForm_id(int form_id) {
		this.form_id = form_id;
	}

	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + ", filterType=" + filterType
				+ ", user_id=" + user_id + ", form_id=" + form_id + "]";
	}

}
