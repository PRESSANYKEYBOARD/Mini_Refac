package board.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
import board.bean.FundingDTO;
import board.service.FundingService;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("funding")
public class FundingController {
	@Autowired
	private FundingService fundingService;
	
	@Resource(name="uploadPath")
	private String uploadPath;

	@RequestMapping(value = "fun_main", method = RequestMethod.GET)
	public String fun_main() {
		return "funding/fun_main";
	}
	
	//게시글 보기
	//@PathVariable 어노테이션을 이용하여 URL 경로에 해당 번호를 포함하여 전달
	//예를 들어, URL 경로가 "/funding/{boardFSeq}"일 때, {boardFSeq} 자리에 해당 글 번호를 넣어주면 된다. 
	//이를 받아 컨트롤러에서는 @PathVariable을 사용하여 해당 변수에 값을 할당할 수 있다.
	@RequestMapping(value = "fun_view/{boardFSeq}", method = RequestMethod.GET)
	public ModelAndView fun_view(@PathVariable("boardFSeq") int boardFSeq) {
	    FundingDTO fundingDTO = fundingService.getBoard(boardFSeq);
	    return new ModelAndView("funding/fun_view", "fundingDTO", fundingDTO);
	}

	@RequestMapping(value = "fun_writeform", method = RequestMethod.GET)
	public String fun_write_Form() {
		return "funding/fun_writeform";
	}
	
	@PostMapping(value = "fun_write")
	@ResponseBody
	public void fun_write(@ModelAttribute FundingDTO fundingDTO,
						   @RequestParam MultipartFile boardFile, MultipartFile companyFile,
	                       HttpSession session) throws Exception {
	   
		String companyName= companyFile.getOriginalFilename(); //판매하는 회사 이미지	
	    String fileName = boardFile.getOriginalFilename(); //썸네일 이미지
	    String companyPath = session.getServletContext().getRealPath("/WEB-INF/storage/");
	    String thumbnailPath = session.getServletContext().getRealPath("/WEB-INF/storage/");

	    fundingDTO.setFileName(companyName);
	    fundingDTO.setBoardFThumbnail(fileName);
	    
	    File file  = new File(thumbnailPath, fileName);
	    File file2 = new File(companyPath, companyName);
	    
	    companyFile.transferTo(file2);
	    boardFile.transferTo(file);
	    
	    System.out.println(fundingDTO.getFileName());
	    System.out.println(fundingDTO.getBoardFThumbnail());
	    System.out.println(fundingDTO.getBoardFRewardSelect());
	    System.out.println(fundingDTO.getBoardFRewardPrice());
	    
	    fundingService.write(fundingDTO);
	}
	
	@RequestMapping(value = "fun_updateform", method = RequestMethod.GET)
	public String fun_updateform(@RequestParam int boardFSeq, Model model) throws Exception {
		FundingDTO fundingDTO = fundingService.getBoard(boardFSeq);
	    model.addAttribute("fundingDTO", fundingDTO);
	    model.addAttribute("boardFSeq", boardFSeq); // 모델에 boardFSeq 값을 담음
	    return "funding/fun_updateform";
	}
	
	@PostMapping(value = "fun_update")
	@ResponseBody
	public void fun_update(@RequestParam("boardFSeq") int boardFSeq,
	                       @ModelAttribute FundingDTO fundingDTO,
	                       @RequestParam MultipartFile boardFile, MultipartFile companyFile,
	                       HttpSession session) throws Exception {
		
	    fundingDTO.setBoardFSeq(boardFSeq);
	    
		String companyName = companyFile.getOriginalFilename(); //판매하는 회사 이미지	
	    String fileName = boardFile.getOriginalFilename(); //썸네일 이미지
	    String companyPath = session.getServletContext().getRealPath("/WEB-INF/storage/");
	    String thumbnailPath = session.getServletContext().getRealPath("/WEB-INF/storage/");
	    
	    System.out.println(thumbnailPath);
	    
	    // 새로운 파일 업로드
	    File newFile = new File(thumbnailPath, fileName);
	    boardFile.transferTo(newFile);

	    // 회사 이미지 업로드
	    File newCompanyFile = new File(companyPath, companyName);
	    companyFile.transferTo(newCompanyFile);
	    
	    // 기존 파일 경로 생성
	    String oldFile = thumbnailPath + "/" + fundingDTO.getBoardFThumbnail();

	    // 기존 파일 삭제
	    File oldThumbnailFile = new File(oldFile);
	    if (oldThumbnailFile.exists()) {
	        oldThumbnailFile.delete();
	    }

	    // 회사 이미지 삭제
	    String oldCompanyFile = companyPath + "/" + fundingDTO.getFileName();
	    File oldCompanyImageFile = new File(oldCompanyFile);
	    if (oldCompanyImageFile.exists()) {
	        oldCompanyImageFile.delete();
	    }
	    
	    fundingDTO.setBoardFSeq(boardFSeq); // 수정할 게시글의 번호를 set 해줌
	    fundingDTO.setFileName(companyName);
	    fundingDTO.setBoardFThumbnail(fileName);
	    
	    System.out.println(fundingDTO.getBoardFSeq());
	    System.out.println(fundingDTO.getFileName());
	    System.out.println(fundingDTO.getBoardFThumbnail());
	    System.out.println(fundingDTO.getBoardFRewardSelect());
	    System.out.println(fundingDTO.getBoardFRewardPrice());
	    
	    fundingService.update(fundingDTO);
	}
	
	@GetMapping(value = "fun_getBoard")
	@ResponseBody
	public FundingDTO getBoard(@RequestParam int boardFSeq) {
		return fundingService.getBoard(boardFSeq);
	}
	
	@GetMapping(value = "fun_getBoardList")
	@ResponseBody
	public List<FundingDTO> getBoardList() {
	    return fundingService.getBoardList();
	}
	
	@RequestMapping(value = "fun_list", method = RequestMethod.GET)
	public ModelAndView list() {
	    ModelAndView mav = new ModelAndView("funding/fun_main");
	    List<FundingDTO> list = fundingService.getBoardList();
	    mav.addObject("list", list);
	    return mav;
	}
	
	@GetMapping(value = "fun_getThumbnail")
	@ResponseBody
	public FundingDTO getThumbnail(@RequestParam int boardFSeq) {
		return fundingService.getThumbnail(boardFSeq);
	}
	
	public static boolean deleteFile(String fullpath) {
	    boolean result = false;
	    File delFile = new File(fullpath);
	    if(delFile.exists()) {
	        result = delFile.delete();
	    }
	    return result;
	}
	
	@PostMapping(value = "fun_delete")
	@ResponseBody
	public void fun_delete(@RequestParam int boardFSeq) {
		fundingService.delete(boardFSeq);
	}
	
	//최신순
	@GetMapping(value = "funList_last")
	public String funList_last(Model model) {
	    model.addAttribute("list", fundingService.getBoardListByLast());
	    return "funList_last";
	}
	
	//종료순
	@GetMapping(value = "funList_end")
	public String funList_end(Model model) {
	    model.addAttribute("list", fundingService.getBoardListByEnd());
	    return "funList_end";
	}
	
	//참여금액순
	@GetMapping(value = "funList_rewardPrice")
	public String funList_rewardPrice(Model model) {
	    model.addAttribute("list", fundingService.getBoardListByRewardPrice());
	    return "funList_rewardPrice";
	}
	
	/*
	 * //참여율순
	 * 
	 * @GetMapping(value = "funList_RewardPerce") public String
	 * funList_RewardPercet(Model model) { model.addAttribute("list",
	 * fundingService.getBoardListByRewardPercet) }
	 */
	
	
	
	@PostMapping(value="orderbydate")
	@ResponseBody
	public List<FundingDTO> orderbydate(@RequestParam String option) {
		System.out.println(option);
		
		return fundingService.orderbydate(option);
	}
	
	/*
	 * @PostMapping(value="orderbying")
	 * 
	 * @ResponseBody public List<FundingDTO> orderbying(@RequestParam String option)
	 * { return fundingService.orderbying(option); }
	 */
	
}
