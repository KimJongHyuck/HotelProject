package com.hotel.biz.VO;

public class room_infoVO {

	private int r_num; // 방 번호
	private int r_price; // 방 가격
	private int r_name; // 방 이름
	private boolean r_check; // 예약 유무
	
	public room_infoVO(int r_num, int r_price, int r_name, boolean r_check) {
		super();
		this.r_num = r_num;
		this.r_price = r_price;
		this.r_name = r_name;
		this.r_check = r_check;
	}

	public int getR_num() {
		return r_num;
	}

	public void setR_num(int r_num) {
		this.r_num = r_num;
	}

	public int getR_price() {
		return r_price;
	}

	public void setR_price(int r_price) {
		this.r_price = r_price;
	}

	public int getR_name() {
		return r_name;
	}

	public void setR_name(int r_name) {
		this.r_name = r_name;
	}

	public boolean isR_check() {
		return r_check;
	}

	public void setR_check(boolean r_check) {
		this.r_check = r_check;
	}

}
