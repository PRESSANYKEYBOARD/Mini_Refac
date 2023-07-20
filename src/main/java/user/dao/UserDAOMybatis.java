package user.dao;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ascii.AES256;
import user.bean.UserDTO;
import user.bean.UserImageDTO;

@Repository
@Transactional
public class UserDAOMybatis implements UserDAO {
	@Autowired
	private SqlSession sqlsession;	
	
	HttpSession session;
	
	@Override
	public void join(UserDTO userDTO) {
		System.out.println(userDTO.getUserpassword());
		
		String password = userDTO.getUserpassword();
		
		
        AES256 aes256 = new AES256();
       
        String cipherText=null;
		try {
			cipherText = aes256.encrypt(password);
			System.out.println(aes256.decrypt(cipherText));
		} catch (Exception e) {
			e.printStackTrace();
		}
        System.out.println(password);
        System.out.println("cipherText(encrypt):"+cipherText);
        
        userDTO.setUserpassword(cipherText);
       
		
		sqlsession.insert("userSQL.join",userDTO);
		System.out.println("회원가입성공");
	}

	@Override
	public UserDTO getUser(String id) {

		return sqlsession.selectOne("userSQL.getUser",id);
	}

	@Override
	public String login(Map<String,String> map) {
		 String userpassword = map.get("userpassword");
		 
		 AES256 aes256 = new AES256();
		 String cipherText=null;
		 try {
				cipherText = aes256.encrypt(userpassword);
				System.out.println(aes256.decrypt(cipherText));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		 userpassword = cipherText;
		 map.put("userpassword", userpassword);
		 
		
		return sqlsession.selectOne("userSQL.login", map);

		

	}

	@Override
	public String kakaologin(String kakao_email) {
	
		

		
		String userid=sqlsession.selectOne("userSQL.kakaologin",kakao_email);
		
		return userid;

		
	}

	@Override
	public String findIdComplete(Map<String, String> map) {
		String userid = sqlsession.selectOne("userSQL.findIdComplete",map);
		return userid;
	}

	@Override
	public String findpasswordcomplete(Map<String, String> map) {
		
		String userid = sqlsession.selectOne("userSQL.findpasswordcomplete",map);
		
		return userid;
	}

	@Override
	public void changepassword(Map<String, String> map) {
		sqlsession.update("userSQL.changepassword",map);
		System.out.println("업데이트완료!!");
	}
	
	
	
	
	
	
	
	
	@Override
	public void profileimage(UserImageDTO userImageDTO) {
		
		Map<String,String> map = new HashMap<String,String>();
		String filename= profilelist(userImageDTO.getUserid());
		
		if(filename==null) {
			sqlsession.insert("userSQL.profileimageupload",userImageDTO);
			System.out.println("사진업로드 성공!!");
			
		}
		
		else {
			sqlsession.update("userSQL.profileimageupdate",userImageDTO);
			System.out.println("사진 업데이트성공!!");
		}

	}

	@Override
	public String profilelist(String userid) {
		
		return sqlsession.selectOne("userSQL.profilelist",userid);
	}


	@Override
	public void update(UserDTO userDTO) {
		System.out.println(userDTO.getUserid());
		sqlsession.update("userSQL.update", userDTO);
		//System.out.println("업데이트완료");
		
	}

	@Override
	public void delete(Map<String,String> map) {
		sqlsession.update("userSQL.delete",map);
		//System.out.println("삭제완료");
	}
	
	
	@Override
	public String delete2(String userid) {
		System.out.println("delete2" + userid);
		return sqlsession.selectOne("userSQL.delete2", userid);
	}
	
	@Override
	public void deleteFinal(Map<String, Object> map) {
		System.out.println("deleteF" + 	map.get("userid") + ","+map.get("userpassword"));
		int su = sqlsession.delete("userSQL.deleteFinal", map);
		System.out.println(su);
	}

	@Override
	public int passChk(UserDTO userDTO) {
		int result = sqlsession.selectOne("userSQL.passChk", userDTO);
		return result;
	}
	
	
	
	
	
	
	
}