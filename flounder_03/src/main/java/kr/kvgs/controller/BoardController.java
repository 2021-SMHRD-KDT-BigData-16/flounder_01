package kr.kvgs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.kvgs.entity.Community;
import kr.kvgs.entity.DetectDis;
import kr.kvgs.entity.Dis_search;
import kr.kvgs.entity.Member;
import kr.kvgs.mapper.BoardMapper;


@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	private BoardMapper mapper;
	
	@RequestMapping("/community")
	public String community(Model model) {
		logger.info("BoardController getCommunity");
		
		List<Community> list_comm = mapper.getCommunity();
		model.addAttribute("list_comm", list_comm);
		
		return "board/05_share";
	}

	@RequestMapping("/history")
	public String history(Model model, HttpSession session) {
		logger.info("BoardController history");
		Member mvo;
		
		mvo = (Member) session.getAttribute("mvo");
		logger.info(" history email : {}, name : {}", mvo.getM_email(), mvo.getM_name());
		
		List<DetectDis> list_detect = mapper.getHistory(mvo);
		model.addAttribute("list_detect", list_detect);
		
		return "board/07_history";
	}
	
	@RequestMapping("/search")
	public String search(String str_search, Model model, HttpSession session) {
				
		logger.info("BoardController search str_search {}", str_search);
		
//		str_search = "바이러스";
		List<Dis_search> list_search= mapper.getSearch(str_search);
		model.addAttribute("list_search", list_search);
		
		return "board/04_search";
		
		
		
		
		
		
		
/*		
		logger.info("BoardController list email:{}, pw:{}", mvo.getM_email(), mvo.getM_pw());
		Member vo = mapper.login(mvo);
		if (vo != null) { // 회원인증에 성공
			session.setAttribute("mvo", vo);
			logger.info("BoardController Login Success email:{} name:{}", vo.getM_email(), vo.getM_name());
			return "board/02_info";
		} else
		{
			logger.info("BoardController Login Fail");
			session.invalidate(); // 세션을 무효화
			return "board/01_login";
		}
*/		 
	}

}
