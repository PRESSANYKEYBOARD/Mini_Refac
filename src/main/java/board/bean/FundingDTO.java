package board.bean;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class FundingDTO {
	private int boardFSeq; //시퀀스 설정
	private String userId; //not null
	private String fileName;
	private String comName;
	private String comText;
	
	private Date boardFExpireDate; //not null
	private String boardFIsExpired;
	private String boardFSubject; //not null
	private Double boardFGoalPercet;
	private int boardFGoalAmount;
	private int boardFRealAmount;
	private String boardFContent; //not null
	
	private String boardFThumbnail;
	private String boardFThumbnailPath;
	private String boardFRewardSelect;
	private int boardFRewardPrice;
	
	private Date boardFSendDate; //not null
	private int boardFTotRewardCnt;
	private int boardFSoldRewardCount;
}
