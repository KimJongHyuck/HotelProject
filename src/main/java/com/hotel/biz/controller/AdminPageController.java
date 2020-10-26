package com.hotel.biz.controller;


import java.text.DateFormat;
import java.text.SimpleDateFormat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;


import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.slf4j.Logger;

import com.hotel.biz.VO.AdminVO;
import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;
import com.hotel.biz.common.Search;
import com.hotel.biz.service.AdminPageService;


@Controller
public class AdminPageController {

	private Logger logger = LoggerFactory.getLogger(AdminPageController.class);
	
	@Inject
	AdminPageService adminPageService;


	@RequestMapping(value = "adminPage.do", method = RequestMethod.GET)
	public String adminpage(Model model) throws Exception {
//		List<AdminVO> admin = adminPageService.getadminList();
//		model.addAttribute("admin", admin);
//		System.out.println("model : " + model);
		return "adminPage/adminPage";
	}
	
	
//	@RequestMapping(value = "adminPage.do",method = RequestMethod.GET)
//	public String getMemberList(Model model
//			,@RequestParam(required = false, defaultValue = "1") int page
//			,@RequestParam(required = false, defaultValue = "1") int range
//			,@RequestParam(required = false, defaultValue = "id") String searchType
//			,@RequestParam(required = false) String keyword
//			) throws Exception {
//		
//		Search search = new Search();
//		search.setSearchType(searchType);
//		search.setKeyword(keyword);
//		
//		//전체 게시글 개수
//		int listCnt = adminPageService.getMemberListCnt(search);
//		//search 객체 생성
//		search.pageInfo(page, range, listCnt);
//		
//		model.addAttribute("pagination",search);
//		model.addAttribute("list",adminPageService.getMemberList(search)); // model에 데이터 값을 담는다.
//		return "adminPage/adminPage"; //board/board_list.jsp로 이동
//		
//	}
//	@ResponseBody
//	@RequestMapping(value = "admin", method = RequestMethod.POST)
//	public void adminpage2(Model model) throws Exception {
//		List<AdminVO> admin = adminPageService.getadminList();
//		model.addAttribute("admin", admin);
//		System.out.println("model : " + model);
//	
//	}
	
//	@RequestMapping("admin")
//	public void adminPage(@ModelAttribute("cri") SearchCriteria cri,Model model) throws Exception{
//		logger.info(cri.toString());
//		
//		model.addAttribute("list", adminPageService.listCriteria(cri));
//		
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCri(cri);
//		pageMaker.setTotalCount(adminPageService.listCountCriteria(cri));
//		
//		model.addAttribute("pageMaker", pageMaker);
//		
//	}

	@ResponseBody
	@RequestMapping("memberlist")
	public Map<String, Object> ajaxlist(AdminVO vo) throws Exception {
		List<Map<String, String>> dataList = new ArrayList<Map<String, String>>();
		Map<String, String> data = null;

		List<AdminVO> adminList = adminPageService.getMemberList();
		if (adminList.size() == 0) {
			return null;
		}
		DateFormat sdFormat = new SimpleDateFormat("yyyyMMdd");

		for (AdminVO d : adminList) {
			data = new HashMap<String, String>();
			data.put("m_num", Integer.toString(d.getM_num()));
			data.put("id", d.getId());
			data.put("name", d.getName());
			data.put("phone", d.getPhone());
			data.put("email", d.getEmail());
			data.put("regdate", sdFormat.format(d.getRegdate()));
			data.put("rv_num", Integer.toString(d.getRv_num()));
			dataList.add(data);
		}
		Map<String, Object> admindata = new HashMap<String, Object>();
		admindata.put("datas", dataList);

		System.out.println("admindata.size() : " + admindata.size());
		return admindata;
	}

	@ResponseBody
	@RequestMapping(value = "rv_info_list")
	public Map<String, Object> rv_infoList(@RequestParam("rv_num") int rv_num, Rv_infoVO vo) throws Exception {
		List<Map<String, String>> dataList = new ArrayList<Map<String, String>>();
		Map<String, String> data = null;

//		System.out.println("Controller rv_num: "+rv_num);
		List<Rv_infoVO> rv_infoList = adminPageService.getRv_infoList(rv_num);
		// System.out.println("rv_infoList : "+rv_infoList);
		if (rv_infoList.size() == 0) {
			return null;
		}
		DateFormat sdFormat = new SimpleDateFormat("yyyyMMdd");

		for (Rv_infoVO d : rv_infoList) {
			data = new HashMap<String, String>();
			data.put("rv_num", Integer.toString(d.getRv_num()));
			data.put("rv_pcount", Integer.toString(d.getRv_pcount()));
			data.put("r_num", Integer.toString(d.getR_num()));
			data.put("m_num", Integer.toString(d.getM_num()));
			data.put("rv_indate", d.getRv_indate());
			data.put("rv_outdate", d.getRv_outdate());
			data.put("rv_date", sdFormat.format(d.getRv_date()));

			dataList.add(data);

		}
		Map<String, Object> rvdata = new HashMap<String, Object>();
		rvdata.put("datas", dataList);
		System.out.println("rvdata : " + rvdata);
		return rvdata;
	}

	@ResponseBody
	@RequestMapping(value = "room_info_list")
	public Map<String, Object> room_info_list(@RequestParam("r_num") int r_num, Room_infoVO vo) throws Exception {
		List<Map<String, String>> dataList = new ArrayList<Map<String, String>>();
		Map<String, String> data = null;

		List<Room_infoVO> room_infoList = adminPageService.getRoom_infoList(r_num);

		// System.out.println("rv_infoList : " + room_infoList);
		if (room_infoList.size() == 0) {
			return null;
		}

		for (Room_infoVO d : room_infoList) {
			data = new HashMap<String, String>();
			data.put("r_num", Integer.toString(d.getR_num()));
			data.put("r_price", Integer.toString(d.getR_price()));
			data.put("r_name", d.getR_name());
			data.put("r_check", Integer.toString(d.getR_check()));
			dataList.add(data);

		}
		Map<String, Object> roomdata = new HashMap<String, Object>();
		roomdata.put("datas", dataList);
		System.out.println("rvdata : " + roomdata);
		return roomdata;
	}

	@ResponseBody
	@RequestMapping("room_update")
	public Map<String, Object> roomUpdate(@RequestParam(value = "r_num")int r_num,
			@RequestParam(value = "r_name")String r_name,
			@RequestParam(value = "r_price")int r_price,
			@RequestParam(value = "r_check")String r_check) throws Exception{
		
		System.out.println("r_num");
		System.out.println("r_name");
		System.out.println("r_price");
		System.out.println("r_check");
	
		Map<String, Object> room = new HashMap<>();
		room.put("r_num", r_num);
		room.put("r_name", r_name);
		room.put("r_price", r_price);
		
		if(r_check.equals("예약중")) {
			room.put("r_check",1);
		}else {
			room.put("r_check",0);
		}
		
		System.out.println(room);
		
		Map<String, Object> as = adminPageService.getRoom_update(room);
		return as;

	}

}
