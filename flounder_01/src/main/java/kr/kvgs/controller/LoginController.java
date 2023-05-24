package kr.kvgs.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.kvgs.entity.Fuser;
import kr.kvgs.mapper.BoardMapper;

@Controller  // 컨트롤러로 인식을한다.
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired // 외부에 만들어진 객체를 주입하여 연결하는 방법(의존성 주입 : DI)
	private BoardMapper mapper;

	@RequestMapping("/")
	public String main(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "board/01_login";
	}
	
	
	@RequestMapping("/login") // username, password -> User(X), Member(O)
	public String login(Fuser mvo, HttpSession session) {
		logger.info("LoginController list {}", mvo);
		logger.info("LoginController list email:{}, pw:{}", mvo.getUemail(), mvo.getUpw());
		Fuser vo = mapper.login(mvo);
//		if (vo != null) { // 회원인증에 성공
//			session.setAttribute("mvo", vo);
//		}
//		return "redirect:/list";
		if (vo != null) { // 회원인증에 성공
			return "board/02_list";
		} else
		{
			return "board/01_login";
		}

		
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate(); // 세션을 무효화
		return "redirect:/list";
	}

}
