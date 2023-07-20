package board.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.NoticeDTO;

@Repository
@Transactional // commit/rollback 자동화
public class SupportDAOMyBatis implements SupportDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void consult(Map<String, String> map) {
		sqlSession.insert("supportSQL.consult", map);
	}

	@Override
	public List<NoticeDTO> getNoticeList(Map<String, Integer> map) {
		return sqlSession.selectList("supportSQL.getNoticeList", map);
	}

	@Override
	public int getTotalA() {
		return sqlSession.selectOne("supportSQL.getTotalA");
	}
	
	@Override
	public List<NoticeDTO> getSearchList(Map<String, Object> map2) {
		return sqlSession.selectList("supportSQL.getSearchList", map2);
	}

	@Override
	public int getSearchTotalA(Map<String, Object> map2) {
		return sqlSession.selectOne("supportSQL.getSearchTotalA", map2);
	}

	@Override
	public NoticeDTO getNoticeView(String noticeSeq) {
		return sqlSession.selectOne("supportSQL.getNoticeView", noticeSeq);
	}

	@Override
	public List<Object> getNoitceListPreNext(String noticeSeq) {
		int noticeSeqInt = Integer.parseInt(noticeSeq);
		List<Object> list = new ArrayList<Object>();
		
		NoticeDTO noticeDTOPre = sqlSession.selectOne("supportSQL.getNoitceListPre", noticeSeqInt);
		if(noticeDTOPre==null) {
			list.add("");
		} else {
			list.add(noticeDTOPre);
		}
		
		NoticeDTO noticeDTONext = sqlSession.selectOne("supportSQL.getNoitceListNext", noticeSeqInt);

		if(noticeDTONext==null) {
			list.add("");
		} else {			
			list.add(noticeDTONext);
		}
		
		return list;
		//return sqlSession.selectList("supportSQL.getNoitceListPreNext", Integer.parseInt(noticeSeq));
	}

	@Override
	public void deleteNotice(String noticeSeq) {
		int noticeSeqInt = Integer.parseInt(noticeSeq);
		sqlSession.delete("supportSQL.deleteNotice", noticeSeqInt);		
	}
}
