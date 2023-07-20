package board.bean;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class FundingCommentDTO {
	private int commnetSeq;
	private int boardSeq;
	private String fileName;
	private String userId;
	private int boardPickAmount;
	private Date boardBuyDate;
}