package kr.kvgs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.kvgs.entity.DetectDis;
import kr.kvgs.entity.Member;
import kr.kvgs.entity.Community;
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

}
