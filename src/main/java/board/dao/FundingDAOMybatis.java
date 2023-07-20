package board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.FundingDTO;

@Repository
@Transactional
public class FundingDAOMybatis implements FundingDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void write(FundingDTO fundingDTO) {
		sqlSession.insert("fundingSQL.fundingWrite", fundingDTO);
	}
	
    @Override
    public FundingDTO getBoard(int boardFSeq) {
        return sqlSession.selectOne("fundingSQL.fundingGetBoard", boardFSeq);
    }

    @Override
    public List<FundingDTO> getBoardList() {
        return sqlSession.selectList("fundingSQL.fundingGetBoardList");
    }

	@Override
	public FundingDTO getThumbnail(int boardFSeq) {
		return sqlSession.selectOne("fundingSQL.fundingThumbnail", boardFSeq);
	}

	@Override
	public void update(FundingDTO fundingDTO) {
		sqlSession.update("fundingSQL.fundingUpdate", fundingDTO);
	}

	@Override
	public void delete(int boardFSeq) {
		sqlSession.delete("fundingSQL.fundingDelete", boardFSeq);
	}

	@Override
	public List<FundingDTO> getBoardListByRewardPrice() {
		return sqlSession.selectList("fundingSQL.getBoardListByRewardPrice");
	}

	@Override
	public List<FundingDTO> getBoardListByLast() {
		return sqlSession.selectList("fundingSQL.getBoardListByLast");
	}

	@Override
	public List<FundingDTO> getBoardListByEnd() {
		return sqlSession.selectList("fundingSQL.getBoardListByEnd");
	}

	@Override
	public List<FundingDTO> orderbydate(String option) {
		return sqlSession.selectList("fundingSQL.orderbydate", option);
	}

}
