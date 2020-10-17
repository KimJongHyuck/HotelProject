package com.hotel.biz.VO;

import java.util.Date;

public class checkVO {

	private Date check_in;              
	private Date check_out;             
	private String payment; //지불방법              
	private int rv_num; //예약 번호              
	private int m_num; // 회원 번호 
	
	public checkVO(Date check_in, Date check_out, String payment, int rv_num, int m_num) {
		super();
		this.check_in = check_in;
		this.check_out = check_out;
		this.payment = payment;
		this.rv_num = rv_num;
		this.m_num = m_num;
	}

	public Date getCheck_in() {
		return check_in;
	}

	public void setCheck_in(Date check_in) {
		this.check_in = check_in;
	}

	public Date getCheck_out() {
		return check_out;
	}

	public void setCheck_out(Date check_out) {
		this.check_out = check_out;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public int getRv_num() {
		return rv_num;
	}

	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
		
}
