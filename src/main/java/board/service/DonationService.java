package board.service;

import java.util.List;

import board.bean.BoardDDTO;
import board.bean.FormQDTO;

public interface DonationService {

	public void write(BoardDDTO boardDDTO);

	public BoardDDTO getBoard(int bdSeq);
	
	public List<BoardDDTO> getBoardList();
	
	public BoardDDTO donation_update_load(String bdseq);

	public BoardDDTO donationUpdateLoad(String bdSeq);

	public void donationDelete(String bdSeq);

	public void UpdateDonation(BoardDDTO boardDDTO);

	public List<BoardDDTO> getRelatedPostsByCategory(String categorydona);

	public List<BoardDDTO> CardChildList(String child);

}
