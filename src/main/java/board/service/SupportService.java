package board.service;

import java.util.List;
import java.util.Map;

import board.bean.NoticeDTO;

public interface SupportService {

	public void consult(Map<String, String> map);

	public Map<String, Object> getNoticeList(String pg);

	public NoticeDTO getNoticeView(String noticeSeq);

	public void deleteNotice(String noticeSeq);

	public List<Object> getNoitceListPreNext(String noticeSeq);

	public Map<String, Object> getSearchList(Map<String, String> map);



}
