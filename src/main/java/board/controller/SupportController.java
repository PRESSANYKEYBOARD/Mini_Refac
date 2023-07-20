package board.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import board.bean.NoticeDTO;
import board.service.SupportService;

@Controller
@RequestMapping(value="support")
public class SupportController {
	@Autowired
	private SupportService supportService;
	// 설정된 bean들 중에서 SupportService를 찾아서 연결
	
	@Autowired
	private NoticeDTO noticeDTO;

	@GetMapping(value="consultForm")
	public String consultForm() {
		return "support/consultForm";
	}
	
	@PostMapping(value="consult")
	@ResponseBody
	public void consult(@RequestParam Map<String, String> map) {
		supportService.consult(map);
	}

	@GetMapping(value="noticeList")
	public String noticeList(@RequestParam(required=false, defaultValue="1") String pg, Model model) {
		// 데이터를 싣어가기 위해 Model 사용
		model.addAttribute("pg", pg);

		return "support/noticeList";
	}

	@PostMapping(value="getNoticeList")
	@ResponseBody
	public Map<String, Object> getNoticeList(@RequestParam String pg){
		return supportService.getNoticeList(pg);
	}

	@GetMapping(value="getSearchList")
	@ResponseBody
	public Map<String, Object> getSearchList(@RequestParam Map<String, String> map){
		
		String checkOpt = map.get("checkOpt");
		String searchCont= map.get("searchCont");
		System.out.println(checkOpt + "," +searchCont );
		
		return supportService.getSearchList(map);
	}

	

	@GetMapping(value="noticeView")
	public String noticeView(@RequestParam(required=false) String seq, Model model) {
	// @RequestParam: 이전 페이지에서 전달한 데이터를 받기위해 선언하는 Annotation
	// String seq: url 상 noticeSeq를 받는 key값과 동일하게 선언(Mapping)
	// 또는 String NoticeViewSeq로 받고 싶을 경우, @RequestParam(name="seq") String noticeViewSeq 선언
		model.addAttribute("noticeSeq", seq);

		return "support/noticeView";
	}

	@PostMapping(value="getNoticeView")
	@ResponseBody
	// 1. DispatcherServlet 이동 방지(jsp로 이동 목적이 아닌 데이터만 반환하고자 할 경우)
	// 2. Return DataType을 JSON 객체로 변경
	public NoticeDTO getNoticeView(@RequestParam String noticeSeq){
		return supportService.getNoticeView(noticeSeq);
	}

	@PostMapping(value="deleteNotice")
	@ResponseBody
	public void deleteNotice(@RequestParam String noticeSeq){
		supportService.deleteNotice(noticeSeq);
	}	

	@PostMapping(value="getNoitceListPreNext")
	@ResponseBody
	public List<Object> getNoitceListPreNext(@RequestParam(required=false) String noticeSeq){
		return supportService.getNoitceListPreNext(noticeSeq);
	}

	@GetMapping(value="faqList")
	public String faqList() {
		return "support/faqList";		
	}
	
	@GetMapping(value="faqList2")
	public String faqList2(Model model) {
		model.addAttribute("display", "faqList2.jsp");
		return "support/faqList";
	}

	@GetMapping(value="termsUse")
	public String termsUse() {
		return "support/termsUse";
	}

	@GetMapping(value="termsFunding")
	public String termsFunding(Model model) {
		model.addAttribute("display2", "termsFunding.jsp");
		return "support/termsUse";
	}

	
	
}
