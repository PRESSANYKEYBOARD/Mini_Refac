package board.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
public class NoticeDTO {
	private int noticeSeq;
	private String noticeSubject;
	private String noticeContent;
	private String noticeDate;	
}
