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
	public void donationWrite(BoardDDTO boardDDTO) {
		donationDAO.donationWrite(boardDDTO);
		
	}

	@Override
	public List<BoardDDTO> card_view() {
		List<BoardDDTO> list = donationDAO.card_view();
		
		
		return list;
	}

	@Override
	public BoardDDTO boardview_list(String bdseq) {
		
		return donationDAO.boardview_list(bdseq);
	}


	   @Override
	   public BoardDDTO donationUpdateLoad(String bdSeq) {
		   System.out.println(bdSeq);
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
	
	
	
	
	

}
