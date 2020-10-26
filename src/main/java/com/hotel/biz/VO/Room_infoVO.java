package com.hotel.biz.VO;

public class Room_infoVO {

	private int r_num; // 방 번호
	private int r_price; // 방 가격
	private String r_name; // 방 이름
	private int r_check; // 예약 유무 sql 에서 0과 1로 볼륜 값 지정
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
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public int getR_check() {
		return r_check;
	}
	public void setR_check(int r_check) {
		this.r_check = r_check;
	}
	@Override
	public String toString() {
		return "Room_infoVO [r_num=" + r_num + ", r_price=" + r_price + ", r_name=" + r_name + ", r_check=" + r_check
				+ "]";
	}
	

}
