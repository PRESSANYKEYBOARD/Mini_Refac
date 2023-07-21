<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="boardFSeq" value="${fundingDTO.boardFSeq}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="reset" href="/Hangeulum/css/reset.css" />
<link rel="stylesheet" href="/Hangeulum/css/donation_writeform44.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Document</title>
</head>
<body>

	<!-- 헤더시작 -->
	<div>
		<div id="header">
			<div class="headerContent">
				<div class="logo">
					<a href="#"></a>
				</div>
				<img src="/Hangeulum/image/funmain_image/logo_main.png" alt="로고"
					width="250" height="60">
				<div class="menu">
					<ul>
						<li><a href="">기부</a></li>
						<li><a href="/Hangeulum/funding/fun_main">펀딩</a></li>
						<li><a href="">고객센터</a></li>
					</ul>
				</div>

				<div class="header-r">
					<a href="/Hangeulum/user/loginForm" class="login_btn">로그인</a> <span class="header-bar"></span>
					<a href="#" class="search_btn"> <img
						src="/Hangeulum/image/funmain_image/enlargement.png"
						alt="enlargement.png">
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 헤더 끝 -->

	<!-- post -->
	<div class="post">
		<form id="fun_updateform" name="fun_updateform">
		
		<input type="hidden" id="boardFSeq" name="boardFSeq" value="${fundingDTO.boardFSeq}">

			<input type="text" name="userId" id="userId" value="{sessionScope.userId}">
			<input type="text" name="fileName">
<!-- 			<div class="form-group_title">
				<label for="title">아이디</label> <input type="text"
					class="form-control" id="userId" name="userId">
			</div> -->
			
			<div class="form-group_title">
				<label for="thumnail">썸네일로 수정할 이미지를 선택하세요.</label> 
				<input type="file" class="form-control" id="boardFThumbnail" name="boardFile">
			</div>
			
			<div class="form-group">
				<label for="company">수정할 회사 이미지를 선택하세요.</label> 
				<input type="file" class="form-control" id="fileName" name="companyFile">
			</div>
			
			<div class="form-group">
				<label for="company_text">사명을 수정하세요.</label> 
				<input type="text" class="form-control" id="comName" name="comName">
			</div>
			
			<div class="form-group">
				<label for="company_text">펀딩 페이지에 노출되는 회사 슬로건을 변경하세요.</label> 
				<input type="text" class="form-control" id="comText" name="comText" >
			</div>
			
			<div class="form-group">
				<label for="title" style="width: 50%;">변경할 제목</label>
				<input type="text" class="form-control" id="boardFSubject" name="boardFSubject">
			</div>

			<div class="form-group">
				<label for="goal_amount">목표금액을 변경하세요.</label> 
				<input type="text" class="form-control" id="boardFGoalAmount" name="boardFGoalAmount">
			</div>

			<div class="form-group">
				<label for="post_period_start">변경할 펀딩 개시 시작일 선택하세요.</label> 
				<input type="date" class="form-control" id="post_period_start" name="post_period_start">
			</div>

			<div class="form-group">
				<label for="post_period_end">변경할 펀딩 개시 종료일 선택하세요</label> 
				<input type="date" class="form-control" id="boardFExpireDate" name="boardFExpireDate">
			</div>

			<div class="form-group">
				<label for="post_isperiod">개시 종료여부</label> 
				<input type="text" class="form-control" id="boardFIsExpired" name="boardFIsExpired" readonly>
			</div>

			<div class="form-group">
				<label for="post_period_send">변경할 예상 발송일을 설정하세요.</label> 
				<input type="date" class="form-control" id="boardFSendDate" name="boardFSendDate">
			</div>

			<div class="form-group">
				<label for="reward">변경 상품</label>
				<input type="text" class="form-control" name="boardFRewardSelect" placeholder="상품을 입력하세요.">
				<input type="number" class="form-control" name="boardFRewardPrice" placeholder="금액을 입력하세요.">
			</div>

	      <div class="form-group">
	      	  <label for="post_period_count">준비된 상품 수량 변경</label>
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
				<label for="editor">내용</label>
				<textarea id="boardFContent" name="boardFContent" rows="10" cols="100" value="${update.boardFContent}"></textarea>
			</div>

			<!--    	 	이미지 파일 선택 및 미리보기
    	<input type="file" id="fileName"> -->

			<button type="submit" class="btn-primary" id="updateBtn" name="updateBtn" style="width: 20%; font-weight: bold">수정 완료</button>
			<button type="reset" class="btn-secondary">취소</button>
		</form>
</div>
<script type="text/javascript" src="/Hangeulum/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="/Hangeulum/js/fun_startEnd.js"></script><!-- 펀딩 종료여부 -->
<script type="text/javascript" src="/Hangeulum/js/fun_update.js"></script><!-- 펀딩 라이트 작성.js -->
<script type="text/javascript">
console.log(${sessionScope.userId});
console.log(${update.boardFSeq});
</script>
</body>
</html>