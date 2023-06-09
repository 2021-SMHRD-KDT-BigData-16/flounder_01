package kr.kvgs.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

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
	}

    // 파일전송 요청을 처리하기 위한 컨트롤러
    @RequestMapping("/upload")
    public String getFile(HttpServletRequest request, Model model,  MultipartFile file){
        String fileName = file.getOriginalFilename(); 
        long fileSize = file.getSize();
        
        String imagePath = request.getServletContext().getRealPath("/");
        String fileFullPath = imagePath + file.getOriginalFilename();
		logger.info("BoardController getFile imagePath : {}, FullPath : {}", imagePath, fileFullPath);
         
		File UploadFolder = new File(imagePath);
        try{
    		if( !UploadFolder.exists() ) {
    			logger.info("BoardController getFile imagePath : {} not exist", imagePath);
    			UploadFolder.mkdir();
    		}
        
			logger.info("BoardController getFile FullPath : {}, FileSize : {}", fileFullPath, fileSize);
	        File destination = new File(fileFullPath);
	        file.transferTo(destination);
        }catch (Exception e){
        	logger.info("에러 : " + e.getMessage());
        }finally {
        	
        }
         
        return "board/03_detect";
    }	
	
    // 파일전송 요청을 처리하기 위한 컨트롤러
    @RequestMapping("/dd_register")	
    public String dd_register(DetectDis vo, MultipartFile file, HttpServletRequest request, Model model){
		logger.info("BoardController dd_register dd_email : {}, dd_comment : {}", vo.getDd_email(), vo.getDd_comment());
    	
        String fileName = file.getOriginalFilename(); 
        long fileSize = file.getSize();
        
        String imagePath = request.getServletContext().getRealPath("/");
		String fileExt = fileName.substring(fileName.lastIndexOf("."), fileName.length());
		
		UUID uuid = UUID.randomUUID();
		String[] uuids = uuid.toString().split("-");
		String uniqueName = uuids[0];
		
        String fileFullPath = imagePath + "resources\\DATA\\DetectImg\\" + uniqueName + fileExt;
        String fileSaveDB = "/DATA/DetectImg/" + uniqueName + fileExt;
		
		logger.info("BoardController dd_register fileFullPath : {}, fileSaveDB : {}", fileFullPath, fileSaveDB);

		File UploadFolder = new File(imagePath);
        try{
    		if( !UploadFolder.exists() ) {
    			logger.info("BoardController getFile imagePath : {} not exist", imagePath);
    			UploadFolder.mkdir();
    		}
        
			logger.info("BoardController getFile FullPath : {}, FileSize : {}", fileFullPath, fileSize);
	        File destination = new File(fileFullPath);
	        file.transferTo(destination);
        }catch (Exception e){
        	logger.info("에러 : " + e.getMessage());
        }finally {
        	
        }

        vo.setOrg_img(fileSaveDB);
		int iRet = mapper.dd_insert(vo);
        
        return "board/03_detect";
    }	
}
