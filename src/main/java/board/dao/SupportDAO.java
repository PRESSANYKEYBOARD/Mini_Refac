package board.dao;

import java.util.List;
import java.util.Map;

import board.bean.NoticeDTO;

public interface SupportDAO {

	public void consult(Map<String, String> map);

	public List<NoticeDTO> getNoticeList(Map<String, Integer> map);

	public int getTotalA();


	public List<NoticeDTO> getSearchList(Map<String, Object> map2);

	public int getSearchTotalA(Map<String, Object> map2);

	
	public NoticeDTO getNoticeView(String noticeSeq);

	public List<Object> getNoitceListPreNext(String noticeSeq);

	public void deleteNotice(String noticeSeq);


}
