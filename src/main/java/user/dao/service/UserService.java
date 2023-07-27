package user.dao.service;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import board.bean.BoardDDTO;
import board.bean.BoardFDTO;
import user.bean.UserDTO;
import user.bean.UserImageDTO;

public interface UserService {

	public void join(UserDTO userDTO);

	public String isExistId(String id);

	public String login(Map<String,String> map);

	public String kakaologin(String kakao_emai);

	public String findIdComplete(Map<String, String> map);

	public String findpasswordcomplete(Map<String, String> map);

	public void changepassword(Map<String, String> map);

	
	public void profileimage(UserImageDTO userImageDTO);

	public String profilelist(String userid);
	
	
	
	public UserDTO getUser(String id);
	
	public void update(UserDTO userDTO);

	public void delete(Map<String,String> map);
	
	
	public String delete2(String userid);

	public void deleteFinal(Map<String, Object> map);

	public Map<String,String> activemain();

	public List<BoardDDTO> card_list();

	public List<BoardFDTO> card_list_funding();


	
//
}
