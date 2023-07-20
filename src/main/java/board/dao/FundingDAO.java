package board.dao;

import java.util.List;

import board.bean.FundingDTO;

public interface FundingDAO {

	public void write(FundingDTO fundingDTO);

	public FundingDTO getBoard(int boardFSeq);

	public List<FundingDTO> getBoardList();

	public FundingDTO getThumbnail(int boardFSeq);

	public void update(FundingDTO fundingDTO);

	public void delete(int boardFSeq);

	public List<FundingDTO> getBoardListByRewardPrice();

	public List<FundingDTO> getBoardListByLast();

	public List<FundingDTO> getBoardListByEnd();

	public List<FundingDTO> orderbydate(String option);
	
}
