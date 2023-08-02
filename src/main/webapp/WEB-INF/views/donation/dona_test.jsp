<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>기부 폼 테스트</h1>
<form id="donationForm" name="donationForm">

첨부파일
<input type="file" id="fileName" name="fileName" />
만료날짜 
<input type="date" id="bdExpireDate" name="bdExpireDate" />
제목
<input type="text" id="bdSubject" name="bdSubject"/>
달성률
<input type="text" id="bdGoalPercent" name="bdGoalPercent"/>
목표금액
<input type="text" id="bdGoalAmount" name="bdGoalAmount"/>
누적금액 
<input type="text" id="bdCumulativeAmount" name="bdCumulativeAmount"/>
실제기부금액 
<input type="text" id="bdRealAmount" name="bdRealAmount"/>
내용
<input type="text" id="bdContent" name="bdContent"/>

만료여부
<input type="text" id="bdIsExpired" name="bdIsExpired"/>

태그이름 
<input type="text" id="bdTagName" name="bdTagName"/>

기부단체
<input type="text" id="bdDonaGroup" name="bdDonaGroup"/>

<input type="button" value="작성완료" id="writeBtn"/>
</form>




<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="../js/boardformwrite.js"></script>

</body>
</html>