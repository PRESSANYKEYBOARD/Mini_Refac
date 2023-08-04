package board.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDDTO;
import board.bean.FormQDTO;
import board.bean.FundingDTO;
import board.service.DonationService;

@Controller
@RequestMapping("donation")
public class DonationController {

	@Autowired
	DonationService donationService;

	@Resource(name = "uploadPath")
	private String uploadPath;

	// 기부 메인 
	@RequestMapping(value="dona_main", method = RequestMethod.GET)
	public String dona_main() {
		return "donation/dona_main";
	}
	
	// 게시글 보기
	@RequestMapping(value = "dona_view/{bdSeq}", method = RequestMethod.GET)
	public ModelAndView dona_view(@PathVariable ("bdSeq") int bdSeq) {
		BoardDDTO boardDDTO = donationService.getBoard(bdSeq);
		return new ModelAndView("donation/dona_view", "boardDDTO", boardDDTO);
	}
	
	// 게시글 1개 불러오기
	@GetMapping(value = "dona_getBoard")
	@ResponseBody
	public BoardDDTO getBoard(@RequestParam int bdSeq) {
		return donationService.getBoard(bdSeq);
	}
	
	// 게시글 여려개 불러오기
	@GetMapping(value = "dona_getBoardList")
	@ResponseBody
	public List<BoardDDTO> getBoardList() {
		return donationService.getBoardList();
	}
	
	// 기부 리뷰
	@GetMapping("dona_review")
	public String dona_review() {
		return "donation/dona_review";
	}

	// 게시글 작성 
	@RequestMapping(value = "dona_writeForm", method = RequestMethod.GET)
	public String dona_writeForm() {
		return "donation/dona_writeForm";
	}

	@PostMapping(value = "dona_write")
	@ResponseBody
	public void dona_write(@ModelAttribute BoardDDTO boardDDTO, 
	                        @RequestParam MultipartFile bdImgName,
	                        MultipartFile bdThumbImgName,
	                        HttpSession session) throws Exception {
	    
	    String bdImgUploadPath = session.getServletContext().getRealPath("/WEB-INF/storage");
	    String bdTumbImgUploadPath = session.getServletContext().getRealPath("/WEB-INF/storage");
	    String ymdPath = UploadFileUtils.calcPath(bdImgUploadPath);
	    String fileName = null, fileName2 = null;

	    if (bdImgName != null && !bdImgName.isEmpty()) {
	    	fileName = UploadFileUtils.fileUpload(bdImgUploadPath, bdImgName.getOriginalFilename(), bdImgName.getBytes(), ymdPath);
	        File file1 = new File(bdImgUploadPath, fileName);
	        bdImgName.transferTo(file1);
	        boardDDTO.setBdImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
	    } else {
	    	fileName = bdImgUploadPath + File.separator + "images" + File.separator + "none.png";
	        boardDDTO.setBdImg(fileName);
	    }
	    
	    if (bdThumbImgName != null && !bdThumbImgName.isEmpty()) {
	        fileName2 = UploadFileUtils.fileUpload(bdTumbImgUploadPath, bdThumbImgName.getOriginalFilename(), bdThumbImgName.getBytes(), ymdPath);
	        File file2 = new File(bdTumbImgUploadPath, fileName2);
	        bdThumbImgName.transferTo(file2);
	        boardDDTO.setBdThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName2);
	    } else {
	        fileName2 = bdTumbImgUploadPath + File.separator + "images" + File.separator + "none.png";
	        boardDDTO.setBdThumbImg(fileName2);
	    }

	    donationService.write(boardDDTO);
	}

	/*
	 * //4.오늘의 기부
	 * 
	 * @GetMapping("today_donation") public String today_donation() { return
	 * "donation/today_donation"; }
	 */

	 // 게시물 수정 페이지로 이동
	@RequestMapping("dona_Update")
	public String dona_update(@RequestParam int bdSeq, Model model) {
		model.addAttribute("bdSeq", bdSeq); // param value 전달
		return "donation/dona_update";
   }
   
	//글 수정 
	@PostMapping(value = "UpdateDonation")
	@ResponseBody
	public void UpdateDonation(@ModelAttribute BoardDDTO boardDDTO, MultipartFile fileu,HttpSession session) throws Exception {
		

		//String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String imgUploadPath=session.getServletContext().getRealPath("/WEB-INF/storage");
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;
	
		    // 기존 파일 삭제
		if(fileu != null) {
		    // 기존 파일 삭제
		   

		   fileName =  UploadFileUtils.fileUpload(imgUploadPath, fileu.getOriginalFilename(), fileu.getBytes(), ymdPath);   
		   
		   System.out.println(fileName);
		   
		   
		   System.out.println("파일네임"+fileName);
			File file3= new File(imgUploadPath,fileName);
		   fileu.transferTo(file3);
		   boardDDTO.setFileName(fileName);
		} else {
		   fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		boardDDTO.setBdImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		boardDDTO.setBdThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
	
		
		donationService.UpdateDonation(boardDDTO);
	}

   // 삭제
   @PostMapping(value="donationDelete")
   @ResponseBody
   public void donationDelete(@RequestParam String bdSeq) {
      donationService.donationDelete(bdSeq);   
   }
	
	//카테고리 구현 
   @PostMapping(value="donationmain_cate")
   @ResponseBody
   public List<BoardDDTO> getRelatedPostsByCategory(@RequestParam String categorydona) {
       return donationService.getRelatedPostsByCategory(categorydona);
   }
	
}
