create table boardF(
    boardFSeq number primary key,           --게시글 번호
    userId  varchar2(50) not null,          --유저아이디
    fileName varchar2(50) not null,         --첨부파일, seller 이미지
    
    boardFExpireDate varchar2(30) NOT NULL, --게시글 만료일자
    boardFIsExpired varchar2(10),           --만료여부
    boardFSubject varchar2(50) NOT NULL,    --제목
    boardFGoalPercet number,                --달성률
    boardFGoalAmount number,                --목표금액
    boardFRealAmount number,                --펀딩누적액
    boardFContent varchar2(4000) NOT NULL,  --내용
    boardFSendDate DATE NOT NULL,           --발송일
    boardFTotRewardCnt number,              --준비된 상품 수량
    boardFSoldRewardCount number            --현재까지 판매된 상품 리워드 개수
    );

create table Commnet_f(
    commnetSeq number primary key,      --댓글 번호
    boardSeq number NOT NULL,           --게시글 번호
    fileName varchar2(50),     --유저 프로필 이미지
    userId varchar2(50) NOT NULL,
    boardFPickAmount number,
    boardFBuyDate varchar2(30) NOT NULL
    );
    
    commit;