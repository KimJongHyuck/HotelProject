package com.hotel.biz.VO;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	
	private int b_num; // 글 번호
	private String b_writer; // 작성자
	private String b_title;  // 제목
	private String b_content; // 내용
	private Date b_regdate; // 작성일
	private int b_hit; // 조회수
	private String b_img;
	private String b_Thumbimg;
	private int m_num; // 멤버 번호
	
	private String searchCondition;
	private String searchKeyword;
	private MultipartFile uploadFile;
	
	public BoardVO() {
	
	}
	
	public BoardVO(int b_num, String b_writer, String b_title, String b_content, Date b_regdate, int b_hit,
			String b_img, String b_Thumbimg, int m_num, String searchCondition, String searchKeyword,
			MultipartFile uploadFile) {
		super();
		this.b_num = b_num;
		this.b_writer = b_writer;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_regdate = b_regdate;
		this.b_hit = b_hit;
		this.b_img = b_img;
		this.b_Thumbimg = b_Thumbimg;
		this.m_num = m_num;
		this.searchCondition = searchCondition;
		this.searchKeyword = searchKeyword;
		this.uploadFile = uploadFile;
	}

	public String getB_img() {
		return b_img;
	}

	public void setB_img(String b_img) {
		this.b_img = b_img;
	}

	public String getB_Thumbimg() {
		return b_Thumbimg;
	}

	public void setB_Thumbimg(String b_Thumbimg) {
		this.b_Thumbimg = b_Thumbimg;
	}

	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public Date getB_regdate() {
		return b_regdate;
	}
	public void setB_regdate(Date b_regdate) {
		this.b_regdate = b_regdate;
	}
	public int getB_hit() {
		return b_hit;
	}
	public void setB_hit(int b_hit) {
		this.b_hit = b_hit;
	}
		
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
  
}
