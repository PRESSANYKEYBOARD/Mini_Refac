<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/Hangeulum/css/fun_writeForm.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
<link rel="reset" href="/Hangeulum/css/styleReset.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	
<title>Document</title>
</head>
<body>

<div>
    <div id="header">
        <div class="headerContent">
            <a href="/Hangeulum/"><img src="/Hangeulum/image/logo.png" alt="로고" width="250" height="60"></a>
            <div class="menu">
                <ul>
                    <li><a href="/Hangeulum/donation/donation_main">기부</a></li>
                    <li><a href="/Hangeulum/funding/fun_main">펀딩</a></li>
                    <li><a href="/Hangeulum/support/noticeList">고객센터</a></li>
                </ul>
            </div>
    
            <div class="header-r">
                <a href="#" class="login_btn">로그인</a>
                <span class="header-bar"></span>
                <a href="#" class="search_btn">
                    <img src="/Hangeulum/image/enlargement.png" alt="enlargement.png">
                </a>
            </div>
        </div>
    </div>
</div>	

	<%--End Header--%>

	<%--For Header Height--%>
	<div style="padding-top: 70px;"></div>
	
	<%--Start SubHeader--%>

	<!-- post -->
	<div class="post">
		<form id="fun_writeForm" name="fun_writeForm">
	
			<input type="text" name="userId" id="userId" value="hong">

	<!-- 			<div class="form-group_title">
				<label for="title">아이디</label> <input type="text"
					class="form-control" id="userId" name="userId">
			</div> -->
			
			<div class="form-group_title">
				<label for="thumnail">썸네일로 설정할 이미지를 선택하세요.</label> 
				<input type="file" class="form-control" id="boardFThumbnail" name="boardFile">
			</div>
			
			<div class="form-group">
				<label for="company">회사 이미지를 선택하세요.</label> 
				<input type="file" class="form-control" id="fileName" name="companyFile">
			</div>
			
			<div class="form-group">
				<label for="company_text">사명을 입력하세요.</label> 
				<input type="text" class="form-control" id="comName" name="comName">
			</div>
			
			<div class="form-group">
				<label for="company_text">펀딩 페이지에 노출되는 회사 슬로건을 입력하세요.</label> 
				<input type="text" class="form-control" id="comText" name="comText">
			</div>
			
			<div class="form-group">
				<label for="title" style="width: 50%;">제목</label> <input type="text"
					class="form-control" id="boardFSubject" name="boardFSubject">
			</div>

			<div class="form-group">
				<label for="goal_amount">목표금액을 설정하세요.</label> <input type="text"
					class="form-control" id="boardFGoalAmount" name="boardFGoalAmount">
			</div>

			<div class="form-group">
				<label for="post_period_start">펀딩 개시 시작일을 선택하세요.</label> <input
					type="date" class="form-control" id="post_period_start"
					name="post_period_start">
			</div>

			<div class="form-group">
				<label for="post_period_end">펀딩 개시 종료일을 선택하세요</label> <input
					type="date" class="form-control" id="boardFExpireDate"
					name="boardFExpireDate">
			</div>

			<div class="form-group">
				<label for="post_isperiod">개시 종료여부</label> <input type="text"
					class="form-control" id="boardFIsExpired" name="boardFIsExpired"
					readonly>
			</div>

			<div class="form-group">
				<label for="post_period_send">예상 발송일을 설정하세요.</label> <input
					type="date" class="form-control" id="boardFSendDate"
					name="boardFSendDate">
			</div>

			<div class="form-group">
				<label for="reward">상품</label>
				<input type="text" class="form-control" name="boardFRewardSelect" placeholder="상품을 입력하세요.">
				<input type="number" class="form-control" name="boardFRewardPrice" placeholder="금액을 입력하세요.">
			</div>

		<div class="form-group">
			<label for="post_period_count">준비된 상품 수량을 설정하세요.</label>
			<input type="text" class="form-control" id="boardFTotRewardCnt" name="boardFTotRewardCnt" required>
		</div>
	<!-- 			<div id="additional-rewards">
				여기에 추가적인 상품 입력란이 동적으로 생성됩니다.
			</div>

			<button id="add-reward-btn" type="button">+ 추가 상품 입력</button>

			<div class="form-group">
				<label for="post_period_count">준비된 상품 수량 설정</label> <input
					type="text" class="form-control" id="boardTotRewardCnt"
					name="boardTotRewardCnt">
			</div> -->

			<div class="form-group">
				<label for="editor">내용을 입력하세요.</label>
				<textarea id="boardFContent" name="boardFContent" rows="10"
					cols="100" style="width=100%"></textarea>
			</div>
		    
		    <button type="submit" class="btn-primary" id="writeBtn" name="writeBtn">작성 완료</button>
		    <button type="button" class="btn-secondary" onClick="location.href='/Hangeulum/funding/fun_main'">취소</button>
		  </form>
		</div>
<script type="text/javascript" src="/Hangeulum/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="/Hangeulum/js/fun_startEnd.js"></script><!-- 펀딩 종료여부 -->
<script type="text/javascript" src="/Hangeulum/js/fun_write.js"></script><!-- 펀딩 라이트 작성.js -->
<script type="text/javascript">
console.log(${sessionScope.userId});
console.log(userId);
</script>
</body>
</html>