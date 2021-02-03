package com.project.portfolio.DTO;

public class Portfolio2 {
	Integer portfolio_id;
	Integer template_id;
	
	@Override
	public String toString() {
		return "Portfolio2 [portfolio_id=" + portfolio_id + ", templete_id=" + template_id + "]";
	}
	
	public Integer getPortfolio_id() {
		return portfolio_id;
	}
	public void setPortfolio_id(Integer portfolio_id) {
		this.portfolio_id = portfolio_id;
	}
	public Integer getTemplate_id() {
		return template_id;
	}
	public void setTemplate_id(Integer templete_id) {
		this.template_id = templete_id;
	}
	
	

}