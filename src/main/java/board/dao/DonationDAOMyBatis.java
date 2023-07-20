package board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.SystemPropertyUtils;

import board.bean.BoardDDTO;
import board.bean.FormQDTO;

@Repository
@Transactional
public class DonationDAOMyBatis implements DonationDAO {

	@Autowired
	private SqlSession sqlsession;
	

	@Override
	public void donationWrite(BoardDDTO boardDDTO) {
		System.out.println("===> " + boardDDTO.getBdExpireDate());
		
		System.out.println(boardDDTO.getFileName());
		boardDDTO.setFileName(boardDDTO.getFileName());
		sqlsession.insert("donationSQL.donationWrite",boardDDTO);
		
	}


	@Override
	public List<BoardDDTO> card_view() {
		List<BoardDDTO> list = sqlsession.selectList("donationSQL.card_view");
		return list;
	}


	@Override
	public BoardDDTO boardview_list(String bdseq) {
		
		return sqlsession.selectOne("donationSQL.boardview_list",bdseq);
	}


	   @Override
	   public BoardDDTO donationUpdateLoad(String bdSeq) {
		   System.out.println("DAO:" + bdSeq);
	      return sqlsession.selectOne("donationSQL.donationUpdateLoad", bdSeq);
	   }

	   
		@Override
		public void donationDelete(String bdSeq) {
			sqlsession.delete("donationSQL.donationDelete", bdSeq);
		}




	@Override
	public BoardDDTO donation_update_load(String bdseq) {
		// TODO Auto-generated method stub
		return null;
	}



	
	@Override
	public void UpdateDonation(BoardDDTO boardDDTO) {
		System.out.println("===> " + boardDDTO.getBdExpireDate());
		
		System.out.println("seq:" + boardDDTO.getBdSeq());
		System.out.println(boardDDTO.getBdCumulativeAmount());
		System.out.println(boardDDTO.getBdDonaGroup());
		System.out.println(boardDDTO.getBdSubject());
		System.out.println(boardDDTO.getBdGoalAmount());
		System.out.println(boardDDTO.getBdImg());
		System.out.println(boardDDTO.getBdTagName());
		
		
		System.out.println(boardDDTO.getFileName());
		//boardDDTO.setFileName(boardDDTO.getFileName());
		sqlsession.update("donationSQL.UpdateDonation",boardDDTO);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	@Override
	public List<BoardDDTO> getRelatedPostsByCategory(String categorydona) {
		System.out.println(categorydona);
		return sqlsession.selectList("donationSQL.getRelatedPostsByCategory",categorydona);
	}


	@Override
	public List<BoardDDTO> CardChildList(String child) {
		return sqlsession.selectList("donationSQL.CardChildList",child);
	}
	
	
	
	
	
	
	

}

