package board.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import board.bean.NoticeDTO;
import board.bean.NoticeListPaging;
import board.dao.SupportDAO;

@Service
public class SupportServiceImpl implements SupportService {
	@Autowired
	private SupportDAO supportDAO;

	@Autowired
	private NoticeListPaging noticeListPaging;
	
	@Autowired
	private NoticeDTO noticeDTO;
	
	@Autowired
	HttpServletRequest request;

	@Override
	public void consult(Map<String, String> map) {
		supportDAO.consult(map);
	}
	
	@Override
	public Map<String, Object> getNoticeList(String pg) {
		int endNum = Integer.parseInt(pg)*5; // 5
		int startNum = endNum-4; // 1

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum); // key, value
		map.put("endNum", endNum);
		
		List<NoticeDTO> list = supportDAO.getNoticeList(map); // 1 2 3 4 5

		// 페이징 처리
		int totalA = supportDAO.getTotalA();
		
		noticeListPaging.setCurrentPage(Integer.parseInt(pg));
		noticeListPaging.setPageBlock(5); // 페이지당 5개
		noticeListPaging.setPageSize(5); // 묶음당 5페이지
		noticeListPaging.setTotalA(totalA);
		
		noticeListPaging.makePagingHTML(); // 이전, 다음 버튼
		
		// return 대상은 1개만 가능하므로 list와 userPaging 모두 전달하기 위해 map 선언
		Map<String, Object> mapListAndPaging = new HashMap<String, Object>();
		mapListAndPaging.put("list", list);
		mapListAndPaging.put("noticeListPaging", noticeListPaging);
		
		return mapListAndPaging;
		}


		@Override
		public Map<String, Object> getSearchList(Map<String, String> map) {
			System.out.println(map.get("pg"));
			int endNum = Integer.parseInt(map.get("pg"))*5; // 5
			int startNum = endNum-4; // 1

			Map<String, Object> map2 = new HashMap<String, Object>();
			map2.put("startNum", startNum); // key, value
			map2.put("endNum", endNum);			
			
			List<NoticeDTO> list = supportDAO.getSearchList(map2); // 1 2 3 4 5

			// 페이징 처리
			int totalA = supportDAO.getSearchTotalA(map2);
			
			noticeListPaging.setCurrentPage(Integer.parseInt(map.get("pg")));
			noticeListPaging.setPageBlock(5); // 페이지당 5개
			noticeListPaging.setPageSize(5); // 묶음당 5페이지
			noticeListPaging.setTotalA(totalA);
			// noticeListPaging.setCheckOpt(map.get("checkOpt"));
			// noticeListPaging.setSearchCont(map.get("searchCont"));
			
			noticeListPaging.makePagingHTML(); // 이전, 다음 버튼
			
			// return 대상은 1개만 가능하므로 list와 userPaging 모두 전달하기 위해 map 선언
			Map<String, Object> mapListAndPaging = new HashMap<String, Object>();
			mapListAndPaging.put("list", list);
			mapListAndPaging.put("noticeListPaging", noticeListPaging);
			mapListAndPaging.put("checkOpt", map.get("checkOpt"));
			mapListAndPaging.put("searchCont", map.get("searchCont"));

			return mapListAndPaging;
		}
	
	@Override
	public NoticeDTO getNoticeView(String noticeSeq) {
		return supportDAO.getNoticeView(noticeSeq);
	}

	@Override
	public List<Object> getNoitceListPreNext(String noticeSeq) {
		return supportDAO.getNoitceListPreNext(noticeSeq);
	}

	@Override
	public void deleteNotice(String noticeSeq) {
		supportDAO.deleteNotice(noticeSeq);
	}


	
	
	
	
	
	
	
	
	

	
}
