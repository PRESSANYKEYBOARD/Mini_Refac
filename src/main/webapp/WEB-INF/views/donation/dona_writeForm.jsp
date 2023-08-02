<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="reset" href="/Hangeulum/css/reset.css" />
  <link rel="stylesheet" href="/Hangeulum/css/donation/dona_writeForm.css" />
 
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
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
                    <li><a href="/Hangeulum/donation/dona_main">기부</a></li>
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
  
  <div class="post">
     <form id="dona_writeForm" name="dona_writeForm">
     
		<div class="form-group_title">
			<label for="thumnail">썸네일로 설정할 이미지를 선택하세요.</label> 
			<input type="file" class="form-control" id="fileName" name="fileName">
		</div>
     
      <div class="form-group">
        <label for="title">제목을 입력하세요.</label>
        <input type="text" class="form-control" id="bdSubject" name="bdSubject" required>
      </div>

      <div class="form-group">
        <label for="goal_amount">목표금액을 입력하세요.</label>
        <input type="text" class="form-control" id="bdGoalAmount" name="bdGoalAmount" required>
      </div>
        
      <div class="form-group">
        <label for="post_period_start">게시 시작일을 선택하세요.</label>
        <input type="date" class="form-control" id="bdStartDate" name="bdStartDate" required>
      </div>
      
      <div class="form-group">
        <label for="post_period_end">게시 종료일을 선택하세요.</label>
        <input type="date" class="form-control" id="bdExpireDate" name="bdExpireDate" required>
      </div>
     
      <div class="form-group">
          <label for="hashtags">해시태그는 어떤걸로 설정하시겠습니까?</label>
          <input type="text" class="form-control" id="bdTagName" name="bdTagName">
          <small class="form-text text-muted">해시태그는 쉼표로 구분하여 입력하세요 (예: #나눔 #참여 )</small>
      </div>
        
      <div class="form-group">
         <label for="bdDonaGroup">기부단체를 입력하세요.</label>
         <input type="text" class="form-control" id="bdDonaGroup" name="bdDonaGroup">
     </div>

        
     <div class="form-group">
     	<label for="category">카테고리를 선택하세요.</label>
      	<select class="form-control" id="categorydona" name="categorydona">
       		<option value="">카테고리 선택</option>
			<option value="아동">아동,청소년</option>
 			<option value="어르신">어르신</option>
			<option value="장애인">장애인</option>
      </select>
    </div>
        
    <div class="form-group">
		<label for="editor">내용을 입력하세요.</label>
		<textarea id="bdContent" name="bdContent" rows="10" 
		cols="100" style="width=100%"></textarea>
	</div>
    	
    <button type="submit" class="btn-primary" id="writeBtn" name="writeBtn">작성 완료</button>
    <button type="button" class="btn-secondary" onClick="location.href='/Hangeulum/donation/dona_main'">취소</button>
 </form>
</div>

<script type="text/javascript" src="/Hangeulum/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="/Hangeulum/js/donation/dona_write.js"></script><!-- 펀딩 라이트 작성.js -->
<script type="text/javascript" src="/Hangeulum/js/donation/dona_startEnd.js"></script> <!-- 기부 종료여부 -->
</body>
</html>
