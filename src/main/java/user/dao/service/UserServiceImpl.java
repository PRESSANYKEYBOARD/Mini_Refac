package user.dao.service;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import user.bean.UserDTO;
import user.bean.UserImageDTO;
import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {


	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private UserDAO userDAO = null;


	
	@Override
	public void join(UserDTO userDTO) {
		
		userDAO.join(userDTO);
		
	}



	@Override
	public String isExistId(String id) {
		UserDTO userDTO = userDAO.getUser(id);
		

		if(userDTO ==null)
			return "non_exist";
		else
			return "exist";
	}



	@Override
	public String login(Map<String,String> map) {
		return userDAO.login(map);
	
	}



	@Override
	public String kakaologin(String kakao_email) {
		
		
		
		return userDAO.kakaologin(kakao_email);
	}



	@Override
	public String findIdComplete(Map<String, String> map) {
		
		
		
		return userDAO.findIdComplete(map);
	}



	@Override
	public String findpasswordcomplete(Map<String, String> map) {
		
		return userDAO.findpasswordcomplete(map);
	}



	@Override
	public void changepassword(Map<String, String> map) {
		userDAO.changepassword(map);
		
	}

	
	
	@Override
	public UserDTO getUser(String id) {
		return userDAO.getUser(id);
	}


	@Override
	public void update(UserDTO userDTO) {
		userDAO.update(userDTO);
		
	}


	@Override
	public void delete(Map<String,String> map) {
		userDAO.delete(map);
		
	}


	@Override
	public String delete2(String userid) {
		return userDAO.delete2(userid);
	}



	@Override
	public void deleteFinal(Map<String, Object> map) {
		userDAO.deleteFinal(map);
	}
	
	
	
	
	
	
	
	@Override
	public void profileimage(UserImageDTO userImageDTO) {
		userDAO.profileimage(userImageDTO);
		
	}



	@Override
	public String profilelist(String userid) {
		
		return userDAO.profilelist(userid);
	}





}
