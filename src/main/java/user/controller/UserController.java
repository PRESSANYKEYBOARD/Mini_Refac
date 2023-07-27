package user.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import board.bean.BoardDDTO;
import board.bean.BoardFDTO;
import mail.service.MailService;
import user.bean.UserDTO;
import user.bean.UserImageDTO;
import user.dao.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	UserService userService = null;
	@Autowired
	MailService mailService = null;
	
	
	
	@GetMapping("joinForm")
	public String joinForm() {
		
		return "user/joinForm";
	}

	@PostMapping("join")
	@ResponseBody
	public void join(@ModelAttribute UserDTO userDTO) {
		System.out.println("유저 회원가입"+userDTO.getUseremail());
		
		userService.join(userDTO);
		
	}
	
	@PostMapping(value="isExistId")
	@ResponseBody
	public String isExistId(@RequestParam String id) {
		
		return userService.isExistId(id);  
	}
	
	@GetMapping(value="loginForm")
	public String loginForm() {
		
		return "user/loginForm";
	}
	
	
	@PostMapping(value="login")
	@ResponseBody
	public String login(@RequestParam Map<String,String> map, HttpServletRequest request) {
		String id = userService.login(map);
		
		if(id!=null) {		
			HttpSession session  = request.getSession();
			session.setMaxInactiveInterval(1800);
			session.setAttribute("userid", id);
			
			return "success";
		}
		else{
			return "fail";
		}
		
	}
	
	@GetMapping(value="logOut")
	public String logOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		System.out.println("로그아웃성공!!");
		return "user/mainIndex";
	}
	
	
	@PostMapping(value="kakaologin")
	@ResponseBody
	public String kakaologin(@RequestParam String kakao_email,@RequestParam String kakao_profile, HttpServletRequest request,Model model) {
		System.out.println(kakao_email);
		System.out.println(kakao_profile);
		String userid=userService.kakaologin(kakao_email);
		
		if(userid!=null) {
			HttpSession session  = request.getSession();
			session.setMaxInactiveInterval(1800);
			session.setAttribute("userid",userid);
			session.setAttribute("kakao_profile", kakao_profile);
			
			return "success";
		}
		else {
			return "fail";
		}

	}
	
	
	@GetMapping(value="findIdForm")
	public String findIdForm() {
		return "user/findIdForm2";
	}
	
	@GetMapping(value="mailCheck")
	@ResponseBody
	public String mailCheck(String email){
		System.out.println("이메일 : "+email);
		return mailService.mailCheck(email);
	}
	
	
	@PostMapping(value="findIdComplete")
	@ResponseBody
	public String findIdComplete(@RequestParam Map<String,String> map,Model model) {
		
		String userid=userService.findIdComplete(map);
		
		model.addAttribute("userid",userid);
		System.out.println(map.get("useremail"));
		System.out.println(map.get("username"));
		
		
		
		return userService.findIdComplete(map);

		
	}
	
	

	@GetMapping(value="findIdCompleteForm")
	public String findIdCompleteForm(@RequestParam String userid,Model model) {
		System.out.println("들어오냐");
		model.addAttribute("userid",userid);
		return "user/findIdComplete";
	
	}
	
	@GetMapping(value="findpasswordForm")
	public String findpasswordForm() {
		
		return "user/findpasswordForm";
	}
	
	@PostMapping(value="findpasswordcomplete")
	@ResponseBody
	public String findpasswordcomplete(@RequestParam Map<String,String> map,Model model) {
		
		String userid = userService.findpasswordcomplete(map);
		
		
		
		return userService.findpasswordcomplete(map);
	}
	
	@GetMapping(value="findpasswordcompleteForm")
	public String findpasswordcompleteForm(@RequestParam String userid,Model model) {
		
		model.addAttribute("userid",userid);
		return "user/findpasswordcomplete";
	}
	
	
	
	@PostMapping(value="changepassword")
	@ResponseBody
	public void changepassword(@RequestParam Map<String,String> map) {
		
		userService.changepassword(map);
	}
	

	
	
	
	
	
	@GetMapping(value="profileuploadForm")
	public String profileuploadForm(){
		
		return "user/profileupload";
	}
	
	@PostMapping(value="profileupload", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public void profileupload(@RequestParam MultipartFile img,@RequestParam String userid,@ModelAttribute UserImageDTO userImageDTO,HttpSession session) {

		
		
		String filePath = session.getServletContext().getRealPath("/WEB-INF/storage");//실제폴더
		
		System.out.println(filePath);
	
		String fileName = img.getOriginalFilename(); // 파일명을 진짜로 가져와라.
		System.out.println(fileName);
		File file = new File(filePath,fileName);  //하나의 파일로 생성함.
	//	File file_lier = new File(filePath_lier,fileName);
		
		try {
//			FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file_lier));//파일 복사
			
			img.transferTo(file); //파일이 업로드된 이미지를 file경로로 이동
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println(fileName);
		System.out.println(userid);
		
		userImageDTO.setFilename(fileName);
		userImageDTO.setUserid(userid);
		
		userService.profileimage(userImageDTO);

		
	}
	
	
	@PostMapping(value="profilelist")
	@ResponseBody
	public String profilelist(@RequestParam String userid,HttpServletRequest request, Model model) {
		
		String filename = userService.profilelist(userid);
		
		HttpSession session  = request.getSession();
		session.setAttribute("filename",filename);
		model.addAttribute("filename",filename);
		
		String session2= (String)session.getAttribute("filename");
		
		return filename;
	
		}

	
	@GetMapping(value="mypageIndex")
	public String mypageIndex() {
		return "user/mypageIndex";
	}
	
	
	
	
	
	@GetMapping(value="updateForm")
	public String updateForm() {
		return "user/updateForm";
	}
	
	
	  @PostMapping(value="getUser")
	  
	  @ResponseBody public UserDTO getUser(@RequestParam String id) { return
	  userService.getUser(id); }
	 	
	
	
	
	  @PostMapping(value="update")
	  
	  @ResponseBody public void update(@ModelAttribute UserDTO userDTO){
	  userService.update(userDTO); }
	 	
	@GetMapping(value="deleteForm")
	public String deleteForm() {
		return "user/deleteForm";
	}
	
	
	
	//회원탈퇴
	
	  @PostMapping(value="delete")
	  @ResponseBody public void delete(@RequestParam Map<String,String> map){
	  String userid = map.get("userid"); //System.out.println(userid);
	  userService.delete(map); }


	    @GetMapping(value="deleterepwd")
	    public String deleterepwd() {
	    	
	    	return "user/deleteRepwd";
	    }
	
		  //회원탈퇴
		  
		  @PostMapping(value="delete2")
		  @ResponseBody 
		  public String delete2(@RequestParam String userid){ return
		  userService.delete2(userid); }
	    
		  @PostMapping(value="deleteFinal")
		  @ResponseBody
		  public void deleteFinal(@RequestParam Map<String, Object> map){
			  userService.deleteFinal(map);
	    
		  }
		  
		  @PostMapping(value="activemain")
		  @ResponseBody
		  public Map<String,String> activemain() {
			  System.out.println("액티브메인오니?");
			  return userService.activemain();
		  }
		  
		  @PostMapping(value="card_list")
		  @ResponseBody
		  public List<BoardDDTO> card_list(){
			  
			  return userService.card_list();
		  }
		  
		  
		  @PostMapping(value="card_list_funding")
		  @ResponseBody
		  public List<BoardFDTO> card_list_funding(){
			  return userService.card_list_funding();
		  }
		  
		  
}
