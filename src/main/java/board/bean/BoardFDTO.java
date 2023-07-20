package board.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
public class BoardFDTO {
	private int boardFSeq;
	private String userId;
	private String fileName;
	private Date boardFExpireDate;
	private String boardFIsExpired;
	private String boardFSubject;
	private int boardFGoalPercent;
	private int boardFGoalAmount;
	private int boardFRealAmount;
	private String boardFContent;
	private Date boardFSendDate;
	private int boardFTotRewardCnt;
	private int boardFSoldRewardCount;
	private String boardFRewardSelect;
	private int boardFRewardPrice;
	private String boardFThumbnail;
}
