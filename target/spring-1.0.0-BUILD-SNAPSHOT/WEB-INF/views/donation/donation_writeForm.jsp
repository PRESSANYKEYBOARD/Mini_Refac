<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="reset" href="/Hangeulum/css/reset.css" />
  <link rel="stylesheet" href="/Hangeulum/css/donation_writeform.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <title>Document</title>
</head>
<body>
    <!-- 헤더시작 -->
     <div id="header">
       <div class="headerContent">
         <div class="logo"><a href ="#"></a></div>
         <img src="/Hangeulum/image/logo.png" alt="로고" width="250" height="60">
         <div class="menu">
           <ul>
             <li><a href="">기부</a></li>
                     <li><a href="">펀딩</a></li>
                     <li><a href="">고객센터</a></li>
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
  <!-- 헤더 끝 -->

  <!-- post -->
  
  <div class="post">
     <form id="donationWrite" action="/Hangeulum/donation/dona_write" method="POST" enctype="multipart/form-data">
<!--      <form id="donationWrite" method="POST" enctype="multipart/form-data">
 -->     
       
    
     
      <div class="form-group">
        <label for="title" style="width: 50%;">제목</label>
        <input type="text" class="form-control" id="bdSubject" name="bdSubject" required>
      </div>

      <div class="form-group">
        <label for="goal_amount">목표금액</label>
        <input type="text" class="form-control" id="bdGoalAmount" name="bdGoalAmount" required>
      </div>


        
        <div class="form-group">
          <label for="post_period_start">게시 시작일</label>
          <input type="date" class="form-control" id="bdStartDate" name="bdStartDate" required>
        </div>
        <div class="form-group">
          <label for="post_period_end">게시 종료일</label>
          <input type="date" class="form-control" id="bdExpireDate" name="bdExpireDate" required>
        </div>
        
     
        <div class="form-group">
            <label for="hashtags">해시태그</label>
            <input type="text" class="form-control" id="bdTagName" name="bdTagName">
            <small class="form-text text-muted">해시태그는 쉼표로 구분하여 입력하세요 (예: #나눔 #참여 )</small>
        </div>
        
         <div class="form-group">
            <label for="bdDonaGroup">기부단체</label>
            <input type="text" class="form-control" id="bdDonaGroup" name="bdDonaGroup">
        </div>
        
        
        
<!--         <div class="categorydona">
        	<select name="categorydona" id="categorydona">
    			<option value="">직업선택</option>
    			<option value="아동">아동,청소년</option>
   	 			<option value="어르신">어르신</option>
   				 <option value="장애인">장애인</option>
			</select>
        
        </div> -->
        
         
        
           <div class="form-group">
          <label for="category">카테고리</label>
          <select class="form-control" id="categorydona" name="categorydona">
           <option value="">카테고리 선택</option>
    			<option value="아동">아동,청소년</option>
   	 			<option value="어르신">어르신</option>
   				 <option value="장애인">장애인</option>
          </select>
        </div>
        
        
        
        
        
        	<div class="form-group">
			<label for="editor">내용</label>
			<textarea id="bdContent" name="bdContent" rows="10" cols="100"></textarea>
			<script type="text/javascript">
			$(function(){
			//전역변수
			
			var oEditors = [];
			//스마트에디터 프레임생성
			
			nhn.husky.EZCreator.createInIFrame({
			    oAppRef: oEditors,
			    elPlaceHolder: "bdContent", // textarea의 name태그
			    sSkinURI: "/Hangeulum/smartEditor/SmartEditor2Skin.html",  // 본인 경로게 맞게 수정
			    fCreator: "createSEditor2",
			    
			    htParams : {
			        // 툴바 사용 여부
			        bUseToolbar : true,
			        // 입력창 크기 조절바 사용 여부
			        bUseVerticalResizer : true,
			        // 모드 탭(Editor | HTML | TEXT) 사용 여부
			        bUseModeChanger : true,
			    },
			    
			    
			});
			
			function pasteHTML(filepath) {
			    var sHTML = '';
			    oEditors.getById["bdContent"].exec("PASTE_HTML", [sHTML]);
			}
			
			//전송버튼
			$("#writeBtn").click(function(){
			    //id가 smarteditor인 textarea에 에디터에서 대입
			    
			    oEditors.getById["bdContent"].exec("UPDATE_CONTENTS_FIELD", []);            
			    $("#donationWrite").submit();
			    
			    });
			});
			</script>
		</div>

<!--    	 	이미지 파일 선택 및 미리보기
    	<input type="file" id="fileName"> -->
       
<!--          <div class="form-group">
            <label for="file">첨부 파일</label>
            <input type="file" class="form-control-file" id="file" name="file">
        </div>
    	
         <script>
          const fileInput = document.getElementById('fileInput');
          const preview = document.getElementById('preview');
        
          fileInput.addEventListener('change', function() {
            const file = fileInput.files[0];
            const reader = new FileReader();
            reader.addEventListener('load', function() {
              preview.src = reader.result;
            }, false);
            if (file) {
              reader.readAsDataURL(file);
            }
          });
        </script> -->
        
        
        <!-- 썸네일  -->
        <div class="inputArea">
        	<label for="65Img">이미지</label>
        	<input type="file" id="ThumbImg" name="file" />
        	<div class="select_img"><img src="" /></div>
        <script>
        	$("#ThumbImg").change(function(){
        		if(this.files && this.files[0]) {
        			var reader = new FileReader; 
        			reader.onload = function(data) {
        			     $(".select_img img").attr("src", data.target.result).width(500);        
        		    }
        		    reader.readAsDataURL(this.files[0]);
        		   }
        		  });
        		 </script>
        		 <!--현재 프로젝트의 실제 경로 표시  -->
        		 
     
        		</div>
       

    	
	<a href="/Hangeulum/donation/donation_main">
        <button type="button" class="btn-primary" id="writeBtn" name="writeBtn" style="width: 20%; font-weight: bold">작성 완료</button>
      </a>
        <button type="reset" class="btn-secondary">취소</button>
    </form>
    
    
</div>
  <script type="text/javascript" src="/Hangeulum/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/dona_write.js"></script> <!-- 기부게시글 작성 -->
<script type="text/javascript" src="../js/dona_startEnd.js"></script> <!-- 기부 종료여부 -->
</body>
</html>
