package board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.BoardDDTO;
import board.bean.FormQDTO;
import board.dao.DonationDAO;

@Service
public class DonationServiceImpl implements DonationService {

	@Autowired
	DonationDAO donationDAO;

	@Override
	public void write(BoardDDTO boardDDTO) {
		donationDAO.write(boardDDTO);
	}

	@Override
	public BoardDDTO donationUpdateLoad(String bdSeq) {
	   return donationDAO.donationUpdateLoad(bdSeq);
	}

	@Override
	public void donationDelete(String bdSeq) {
		donationDAO.donationDelete(bdSeq);
	}

	@Override
	public BoardDDTO donation_update_load(String bdseq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void UpdateDonation(BoardDDTO boardDDTO) {
	      donationDAO.UpdateDonation(boardDDTO);

	}

	@Override
	public List<BoardDDTO> getRelatedPostsByCategory(String categorydona) {
		// TODO Auto-generated method stub
		 return donationDAO.getRelatedPostsByCategory(categorydona);
	}
	
	@Override
	public List<BoardDDTO> CardChildList(String child) {

		return donationDAO.CardChildList(child);
	}

	@Override
	public BoardDDTO getBoard(int bdSeq) {
		return donationDAO.getBoard(bdSeq);
	}

	@Override
	public List<BoardDDTO> getBoardList() {
		return donationDAO.getBoardList();
	}

}
