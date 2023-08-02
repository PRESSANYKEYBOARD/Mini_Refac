package board.bean;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardDDTO {
	private int bdSeq;
	private String fileName;
	private String bdExpireDate;
	private String bdSubject;
	/* private String bdGoalPercent; */
	private int bdGoalAmount;
	private int bdCumulativeAmount;
	private String bdContent;
//	private String bdIsExpired;
	private String bdTagName;
	private String bdDonaGroup;
	private String bdImg; // 이미지
	private String bdThumbImg; // 썸네일 이미지
	private String categorydona;
	private String bdStartDate;
}
