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
	public void write(BoardDDTO boardDDTO) {;
		boardDDTO.setFileName(boardDDTO.getFileName());
		sqlsession.insert("donationSQL.donationWrite", boardDDTO);
	}

	@Override
	public BoardDDTO donationUpdateLoad(String bdSeq) {
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
	public BoardDDTO getBoard(int bdSeq) {
		return sqlsession.selectOne("donationSQL.donationGetBoard", bdSeq);
	}

	@Override
	public List<BoardDDTO> getBoardList() {
		return sqlsession.selectList("donationSQL.donationGetBoardList");
	}
	
	@Override
	public void UpdateDonation(BoardDDTO boardDDTO) {
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

