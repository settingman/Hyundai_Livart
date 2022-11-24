package com.livart.dto;

import java.util.Date;

public class ProductVO {
	private String p_id;
	private String p_name;
	private int p_price;
	private int p_discount;
	private String p_category;
	private Date p_date;
	private int p_deliveryfee;
	
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getP_discount() {
		return p_discount;
	}
	public void setP_discount(int p_discount) {
		this.p_discount = p_discount;
	}
	public String getP_category() {
		return p_category;
	}
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	public int getP_deliveryfee() {
		return p_deliveryfee;
	}
	public void setP_deliveryfee(int p_deliveryfee) {
		this.p_deliveryfee = p_deliveryfee;
	}
	
}
