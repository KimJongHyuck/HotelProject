package com.hotel.biz.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hotel.biz.VO.BoardVO;
import com.hotel.biz.VO.Room_infoVO;
import com.hotel.biz.VO.Rv_infoVO;
import com.hotel.biz.service.BoardService;
import com.hotel.biz.service.RvService;


@Controller
@RequestMapping("/rv/*")
public class RvController {
	
	@Inject
	RvService rvService;
	
	@RequestMapping("rv_list.do")
	public String getList(Model model) throws Exception {
		
		List<Rv_infoVO> rvlist = rvService.getlistRv();
		List<Room_infoVO> rmlist = rvService.getlistRm();
		
		model.addAttribute("rvlist", rvlist);
		model.addAttribute("rmlist",rmlist);	
		return "rv/rv_list"; 
		
	}
	
	@RequestMapping(value="rv_insert.do", method=RequestMethod.POST)
	public String rvWriter(
			Rv_infoVO rv,
			@RequestParam(value="r_num",required=false) int rno
			)throws Exception{
		 
		rvService.writeRv(rv);
		rvService.checkonRoom(rno);
		return "redirect:rv_list.do";
	}
	 
	@RequestMapping(value="rv_read.do",method=RequestMethod.POST)
	public @ResponseBody Map<String,Object> rvRead(Rv_infoVO rv,
			Model model,
			@RequestParam(value="rvnum",required=false) int rvno) throws Exception {
		List<Rv_infoVO> rvContentList = new ArrayList<Rv_infoVO>();
		
		rvContentList = rvService.readRv(rvno);
		Rv_infoVO rvContent = rvContentList.get(0);
		
		Map<String,Object> data = new HashMap<>();
		data.put("rvnum", rvContent.getRv_num());
		data.put("mnum", rvContent.getM_num());
		data.put("rnum", rvContent.getR_num());
		data.put("rvpcount", rvContent.getRv_pcount());
		data.put("rvdate", rvContent.getRv_date());
		data.put("rvindate", rvContent.getRv_indate());
		data.put("rvoutdate", rvContent.getRv_outdate());
		
		return data;
	}
	
	
    @RequestMapping(value="rv_update.do", method=RequestMethod.POST)
    public String rvUpdate(Rv_infoVO rv) throws Exception {
        rvService.updateRv(rv);
        return "redirect:rv_list.do";
    }
	
    @RequestMapping(value="rv_delete.do", method=RequestMethod.POST)
    public String rvDelete(
    		@RequestParam(value="rv_num",required=false) int rvno,
    		@RequestParam(value="r_num",required=false) int rno
    		) throws Exception {
        rvService.deleteRv(rvno);
        rvService.checkoffRoom(rno);
        return "redirect:rv_list.do";
    }
}
