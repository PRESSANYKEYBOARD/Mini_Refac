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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import board.bean.BoardDDTO;
import board.bean.FormQDTO;
import board.service.DonationService;

@Controller
@RequestMapping("donation")
public class DonationController {

	@Autowired
	DonationService donationService;

	@Resource(name="uploadPath")
	private String uploadPath;

	//1.기부 메인 
	@RequestMapping(value="donation_main", method = RequestMethod.GET)
	public String donation_main() {
		return "donation/donation_main";
	}
	
	//기부메인-카드
	@PostMapping(value = "card_view")
	@ResponseBody
	public List<BoardDDTO> card_view() {	
		return donationService.card_view();
	}
	
	//2.기부 리뷰
	@GetMapping("donation_review")
	public String donation_review() {
		return "donation/donation_review";
	}
	

//	@RequestMapping(value="donation_review", method = RequestMethod.GET)
//	public String donation_review() {
//		return "views/donation/donation_review";
//	}
	
	//기부 진행글 
	/*
	 * @RequestMapping(value="donation_view", method = RequestMethod.GET) public
	 * String donation_view() { return "views/donation/donation_view"; }
	 */
	
	@GetMapping("donation_view")
	public String donation_view(String bdseq, Model model) {
		model.addAttribute("bdseq", bdseq);
		return "donation/donation_view";
	}

	//3.글작성 
	@RequestMapping(value = "donation_writeForm", method = RequestMethod.GET)
	public String donation_writeForm() {
		return "donation/donation_writeForm";
	}

	@PostMapping(value = "dona_write")
	@ResponseBody
	public void fun_write(@ModelAttribute BoardDDTO boardDDTO, MultipartFile file,HttpSession session) throws Exception {
		
		//String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String imgUploadPath=session.getServletContext().getRealPath("/WEB-INF/storage");
		
		System.out.println(imgUploadPath);
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName=null;
		

		if(file != null) {
		   fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);   
		
		   File file2= new File(imgUploadPath,fileName);
		   file.transferTo(file2);
		   boardDDTO.setFileName(fileName);
		} else {
		   fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		boardDDTO.setBdImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		boardDDTO.setBdThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		
	
		donationService.donationWrite(boardDDTO);
		
		
	}
	
	
	
	//4.오늘의 기부 
	@GetMapping("today_donation")
	public String today_donation() {
		return "donation/today_donation";
	}
	
	
	
	
	//게시물 보기 
	@PostMapping(value="boardview_list")
	@ResponseBody
	public BoardDDTO boardview_list(@RequestParam String bdseq) {
		return donationService.boardview_list(bdseq);
	}
	
	

	
	 // 게시물 수정 페이지로 이동
   @GetMapping("donationUpdate")
   public String donationUpdate(@RequestParam String bdSeq, Model model) {
      System.out.println(bdSeq);
      model.addAttribute("bdSeq", bdSeq); // param value 전달
      return "donation/donation_update";
   }

   
   // 글 불러오기
   @PostMapping(value="donationUpdateLoad")
   @ResponseBody
   public BoardDDTO donationUpdateLoad(@RequestParam String bdSeq) {      
      return donationService.donationUpdateLoad(bdSeq);   
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
	   System.out.println("delete" + bdSeq);
      donationService.donationDelete(bdSeq);   
   }
	
	
	
	
	//카테고리 구현 
   @PostMapping(value="donationmain_cate")
   @ResponseBody
   public List<BoardDDTO> getRelatedPostsByCategory(@RequestParam String categorydona) {
       return donationService.getRelatedPostsByCategory(categorydona);
   }
	
	@PostMapping(value="CardChildList")
	@ResponseBody
	public List<BoardDDTO> CardChildList(@RequestParam String child){

		return donationService.CardChildList(child);
	}
	
	
	
	
	
	
	
	
	
}
