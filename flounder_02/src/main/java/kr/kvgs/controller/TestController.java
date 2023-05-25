package kr.kvgs.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller  // 컨트롤러로 인식을한다.
public class TestController {
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);

	   @RequestMapping("/00")
	   public String test00() {
			logger.info(" TestController : {}.", "test00");
			
			return "board/00_intro";
	   }

	   @RequestMapping("/01")
	   public String test01() {
			logger.info(" TestController : {}.", "test01");
			
			return "board/01_login";
	   }

	   @RequestMapping("/02")
	   public String test02() {
			logger.info(" TestController : {}.", "test02");
			
			return "board/02_info";
	   }
	   
	   @RequestMapping("/03")
	   public String test03() {
			logger.info(" TestController : {}.", "test03");
			
			return "board/03_detect";
	   }
	   
	   @RequestMapping("/04")
	   public String test04() {
			logger.info(" TestController : {}.", "test04");
			
			return "board/04_search";
	   }
	   
	   @RequestMapping("/05")
	   public String test05() {
			logger.info(" TestController : {}.", "test05");
			
			return "board/05_share";
	   }
	   
	   @RequestMapping("/06")
	   public String test06() {
			logger.info(" TestController : {}.", "test06");
			
			return "board/06_share_detail";
	   }
	   
	   @RequestMapping("/07")
	   public String test07() {
			logger.info(" TestController : {}.", "test07");
			
			return "board/07_history";
	   }
	   
	   @RequestMapping("/08")
	   public String test08() {
			logger.info(" TestController : {}.", "test08");
			
			return "board/08_history_detail";
	   }

	   @RequestMapping("/99")
	   public String test99() {
			logger.info(" TestController : {}.", "test99");
			
			return "board/99_template";
	   }

}
