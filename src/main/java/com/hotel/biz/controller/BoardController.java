package com.hotel.biz.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hotel.biz.DAO.BoardDAO;
import com.hotel.biz.VO.BoardVO;
import com.hotel.biz.common.Pagination;
import com.hotel.biz.common.Search;
import com.hotel.biz.common.UploadFileUtils;
import com.hotel.biz.service.BoardService;


@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Inject
	BoardService boardService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "list.do",method = RequestMethod.GET)
	public String getBoardList(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			,@RequestParam(required = false, defaultValue = "b_title") String searchType
			,@RequestParam(required = false) String keyword
			) throws Exception {
		
		Search search = new Search();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		//전체 게시글 개수
		int listCnt = boardService.getBoardListCnt(search);
		//search 객체 생성
		search.pageInfo(page, range, listCnt);
		
		model.addAttribute("pagination",search);
		model.addAttribute("list",boardService.getboardList(search)); // model에 데이터 값을 담는다.
		return "board/board_list"; //board/board_list.jsp로 이동
		
	}
	
	//writer_page.jsp 매핑
	@RequestMapping("writer_page")
	public String writerpage() {
		return "board/writer_page";
	}
	
	//게시글 form 데이터 처리
	@RequestMapping(value="insert.do", method=RequestMethod.POST)
	public String boardWriter(BoardVO vo, MultipartFile file) throws Exception {
		/*
		 * String imgUploadPath = uploadPath + File.separator + "imgUpload"; String
		 * ymdPath = UploadFileUtils.calcPath(imgUploadPath); String fileName = null;
		 * 
		 * if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		 * fileName = UploadFileUtils.fileUpload(imgUploadPath,
		 * file.getOriginalFilename(), file.getBytes(), ymdPath); } else { fileName =
		 * uploadPath + File.separator + "images" + File.separator + "none.png"; }
		 * 
		 * vo.setB_img(File.separator + "imgUpload" + ymdPath + File.separator +
		 * fileName); vo.setB_Thumbimg(File.separator + "imgUpload" + ymdPath +
		 * File.separator + "s" + File.separator + "s_" + fileName);
		 */boardService.writerBoard(vo);
		return "redirect:list.do";
				
	}
	
	 // 게시글 상세내용 불러오기 
    @RequestMapping(value="read.do", method=RequestMethod.GET)
    public String boardRead(@RequestParam int bno,Model model) throws Exception {
        BoardVO data = boardService.boardRead(bno); // bno값을 넘김
        model.addAttribute("data", data); // model에 데이터 값을 담는다
        return "board/board_read"; // board/board_read.jsp로 이동
    }
	
    // 게시글 수정 페이지로 이동 
    @RequestMapping(value="updatepage", method=RequestMethod.GET)
    public String boardUpdate(@RequestParam int bno,Model model) throws Exception {
        BoardVO data = boardService.boardRead(bno); // bno값을 넘김
        model.addAttribute("data", data); // model에 데이터 값을 담는다
        return "board/board_update"; // board/board_update.jsp로 이동
    }
    
    // 게시글 수정 실행
    @RequestMapping(value="update.do", method=RequestMethod.POST)
    public String boardUpdatedo(BoardVO vo,MultipartFile file) throws Exception {
		/*
		 * String imgUploadPath = uploadPath + File.separator + "imgUpload"; String
		 * ymdPath = UploadFileUtils.calcPath(imgUploadPath); String fileName = null;
		 * 
		 * if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		 * fileName = UploadFileUtils.fileUpload(imgUploadPath,
		 * file.getOriginalFilename(), file.getBytes(), ymdPath); } else { fileName =
		 * uploadPath + File.separator + "images" + File.separator + "none.png"; }
		 * 
		 * vo.setB_img(File.separator + "imgUpload" + ymdPath + File.separator +
		 * fileName); vo.setB_Thumbimg(File.separator + "imgUpload" + ymdPath +
		 * File.separator + "s" + File.separator + "s_" + fileName);
		 */    
		boardService.updateBoard(vo);
        return "redirect:list.do"; // 리스트로 리다이렉트
    }
    
    // 게시글 삭제 실행
    @RequestMapping(value="delete.do", method=RequestMethod.GET)
    public String boardDelete(@RequestParam int bno) throws Exception {
        boardService.deleteBoard(bno);
        return "redirect:list.do"; // 리스트로 리다이렉트
    }
	
	
	
}