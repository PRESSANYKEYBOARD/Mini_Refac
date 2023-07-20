package board.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.FundingDTO;
import board.dao.FundingDAO;

@Service
public class FundingServiceImpl implements FundingService {
	@Autowired
	private FundingDAO fundingDAO = null;

	@Override
	public void write(FundingDTO fundingDTO) {
		fundingDAO.write(fundingDTO);
	}
	
	@Override
	public FundingDTO getBoard(int boardFSeq) {
		return fundingDAO.getBoard(boardFSeq);
	}
	
    @Override
    public List<FundingDTO> getBoardList() {
    	return fundingDAO.getBoardList();
    }

	@Override
	public FundingDTO getThumbnail(int boardFSeq) {
		return fundingDAO.getThumbnail(boardFSeq);
	}

	@Override
	public void update(FundingDTO fundingDTO) {
		fundingDAO.update(fundingDTO);
	}

	@Override
	public void delete(int boardFSeq) {
		fundingDAO.delete(boardFSeq);
	}
	
	@Override
	public List<FundingDTO> getBoardListByLast() {
		return fundingDAO.getBoardListByLast();
	}

	@Override
	public List<FundingDTO> getBoardListByRewardPrice() {
		return fundingDAO.getBoardListByRewardPrice();
	}

	@Override
	public List<FundingDTO> getBoardListByEnd() {
		return fundingDAO.getBoardListByEnd();
	}

	@Override
	public List<FundingDTO> orderbydate(String option) {
		
		return fundingDAO.orderbydate(option);
	}

}
