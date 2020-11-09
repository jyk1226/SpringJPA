package com.ncs.green;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.BService;
import vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	BService service;
	
	@RequestMapping(value = "/jsBDetail")
	public ModelAndView jsBDetail(ModelAndView mv, BoardVO vo , HttpServletResponse response) {
		//jason
		response.setContentType("text/html;charset=utf-8");
		vo = service.selectOne(vo);
		
		if(vo!=null) {
			mv.addObject("content", vo.getContent());
		}else mv.addObject("content", "~~글번호의 해당하는 내용이없습니다");
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@RequestMapping(value = "/ablist")
	public ModelAndView ablist(ModelAndView mv, HttpServletRequest request ) {

		// service 처리
		List<BoardVO> list = service.selectList();
		
		if (list != null) {
			mv.addObject("Banana", list);
		} else
			mv.addObject("message", "!출력할 자료가 없습니다.");
		mv.setViewName("ajaxTest/axBoardList");
		return mv;
	}//aidblist
	@RequestMapping(value = "/aidblist")
	public ModelAndView aidblist(ModelAndView mv, BoardVO vo) {
		
		// service 처리
//		List<BoardVO> list = service.searchList(vo);
//		if (list != null) {
//			mv.addObject("Banana", list);
//		} else
//			mv.addObject("message", "!출력할 자료가 없습니다.");
//		mv.setViewName("board/boardList");
		return mv;
	}//aidblist
	
	
	
	@RequestMapping(value = "/blist")
	public ModelAndView blist(ModelAndView mv, HttpServletRequest request) {

		if (request.getParameter("message") != null) {
			mv.addObject("message", request.getParameter("message"));
		}
		// service 처리
		List<BoardVO> list = service.selectList();
		
		if (list != null) {
			mv.addObject("Banana", list);
		} else
			mv.addObject("message", "!출력할 자료가 없습니다.");
		mv.setViewName("board/boardList");
		return mv;
	}

	@RequestMapping(value = "/binsertf")
	public ModelAndView binsertf(ModelAndView mv) {
		mv.setViewName("board/binsertForm");
		return mv;
	}


	// **답글 등록
	// 1) form출력
	@RequestMapping(value = "/rinsertf")
	public ModelAndView rinsertf(ModelAndView mv , BoardVO vo) {
		mv.addObject("ParentInfo",vo);
		mv.setViewName("board/rinsertForm");
		return mv;
	}


}
