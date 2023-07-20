package user.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import user.bean.UserDTO;
import user.bean.UserImageDTO;

public interface UserDAO {
	public void join(UserDTO userDTO);

	public UserDTO getUser(String id);

	public String login(Map<String,String> map);

	public String kakaologin(String kakao_email);

	public String findIdComplete(Map<String, String> map);

	public String findpasswordcomplete(Map<String, String> map);

	public void changepassword(Map<String, String> map);
		
	public void profileimage(UserImageDTO userImageDTO);

	public String profilelist(String userid);

	
	
	
	
	
	//회원정보 수정
	public void update(UserDTO userDTO);
	
	//회원탈퇴
	public void delete(Map<String,String> map);
	
	//비밀번호 체크
	public int passChk(UserDTO userDTO);
	
	
	
	
	
	
	
	public String delete2(String userid);

	public void deleteFinal(Map<String, Object> map);
	
	
	
	
	
	

}
