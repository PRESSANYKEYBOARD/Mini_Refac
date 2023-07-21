<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Hangeulum/resources/css/mypage_funding.css">



</head>
<body>

</head>
<body>


<div>
    <div id="header">
        <div class="headerContent">
            <div class="logo"><a href ="#"></a></div>
            <img src="/Hangeulum/resources/image/mypage_image/logo.png" alt="로고" width="250" height="60">
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
                    <img src="/Hangeulum/resources/image/mypage_image/enlargement.png" alt="enlargement.png">
                </a>
            </div>
        </div>
    </div>
</div>
<!--Header End-->








<div id="container">

<div class="content-left">
<div class="sidebar">
<div class="profile"><a href="#">프로필</a>
<img src="/Hangeulum/resources/image/mypage_image/profile.jpg" style="margin-left:auto; margin-right:auto; display: flex; width="100" height="100" alt="프로필 사진" id="profile_img">
<div class="nickname">nickname</div>
</div>

<div class="mymenu">
<br>
    <div class="content1"><a href="#">MY홈</a></div>
<hr>
    <div class="content2"><a href="#">활동내역</a></div>
<hr>
    <div class="content3"><a href="#">결제관리</a></div>
<hr>
    <div class="content4"><a href="#">1:1 문의</a></div>
<hr>
    <div class="content5"><a href="#">연말정산</a></div>
<hr>


  </div>



  </div>
</div>





<div role="main" class="my_content">
<h3 class="my_title">활동내역</h3>
<!-- 
<input type="hidden" id="userid" value="${userid }">
 -->
 
<input type="hidden" id="userid" value="abc">
 

<fieldset>
<legend class="blind"></legend>
<div class="activity_category" aria-hidden="false">
  
   <a href="#" role="button" class="funding_activity_category_item" id="funding" aria-pressed="true" data-type="funding" style="text-decoration:none">전체 내역</a>



</div>
</fieldset>
 	
 
<div class="my_summary_donation class_my_summary">
					<div class="my_summary_donation_box">
						<span class="title">총 참여한 후원 및 펀딩 수</span>
						<span class="amount"><span class="my_summary_box_cnt">8</span>개</span>
					</div>
					
					<div class="my_summary_donation_box">
					
						<span class="title">총 금액</span>
						<span class="amount"><span class="my_summary_box_amt">154,600</span>원</span>
					</div>
				</div>
</div>
</div>


<div class="group_funding">
	<div class="form-group-1">
		<label for="startDate">startDate</label>
		<input type="date" class="form-control" id="startDate" name ="startDate">
	</div>
	<div class="form-group-2">
		<label for="endDate">endDate</label>
		<input type="date" class="form-control" id="endDate" name ="endDate">
	</div>
	<button type="button" class="btn btn-primary" id="searchBtn">Search</button>

	<div class="table-wrapper">
		<table class="mypageFundingTable">
			<thead>
				<tr>
      <th>기부대상</th>
      <th>기부내용</th>
      <th>기부금액</th>
      <th>기부일자</th>
      <th></th>
      <th>펀딩내용</th>
      <th>펀딩금액</th>
      <th>펀딩참여일자</th>
				</tr>
			</thead>
			<tbody id="fundingTableBody">
				<!-- funding data will be populated here using jQuery -->
			</tbody>
		</table>
	</div>



	<style>
		.group_funding {
			height: 100%;
			display: flex;
			flex-direction: column;
			text-align: left;
			margin-left: 50px;
		}

		.table-wrapper {
			flex: 1;
			overflow-y: auto;
		}
	</style>
</div>



<!--Footer-->
<div class="footer">
    <div class="footer_menu">
        <!--<div class="footer_menu_left"></div>-->
        <div class="footer_menu_right">
            <ul>
                <li style="font-weight: 700; color: #202020; padding-right: 25px;">한걸음 안내</a></li>
                <li><a href="">공지사항</a></li>|&nbsp;&nbsp;
                <li><a href="">이용약관</a></li>|&nbsp;&nbsp;
                <li><a href="">고객센터</a></li>|&nbsp;&nbsp;
                <li><a href="">기업제휴 문의</a></li>|&nbsp;&nbsp;
                <li><a href="">FAQ</a></li>
            </ul>
        </div>
    </div>

    <div class="footer_info_wrap">
        <div class="footer_info_inner">
            <!--<div class="footer_info_left"></div>-->
            <div class="footer_info_right">
                <ul class="footer_info_list">
                    <li class="footer_info_item">재단법인 한걸음</li>
                    <li class="footer_info_item">대표자: 이정규, 김지혜, 김현지, 엄태훈, 이소훈, 최도담</li>
                    <li class="footer_info_item">주소 : 서울시 강남구 역삼동 819-3 삼오빌딩 5-9층</li>
                    <li class="footer_info_item">대표전화 : 02-3486-9600</li>
                    <li class="footer_info_item">이메일 : bitcamp601@naver.com</li>
                    <li class="footer_info_item">사업자등록번호 : 220-12-34567</li>
                    <li class="footer_info_item">통신판매업신고 : 제2023-서울역삼-601호</li>
                    <br>
                    <small class="footer_info_notice">(재)한걸음은 프로젝트의 당사자가 아니므로, 프로젝트 진행 및 거래 등에 대한 책임은 해당 프로젝트의 개설자에게 있습니다.</small>
                    <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="/Hangeulum/image/mypage_image/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
                </ul>
            </div>
        </div>
    </div>
</div>

	
<!--Footer End-->






<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script type="text/javascript" src="/Hangeulum/resources/js/mypage_funding.js"></script>
	<script>
		$(document).ready(function() {
			$("#searchBtn").click(function() {
				var searchDate = $("#searchDate").val();
				$.post("/mypage/search_funding", { searchDate: searchDate }, function(data) {
					$("#fundingTableBody").empty();
					$.each(data, function(index, funding) {
						var row = "<tr><td>" + funding.payment + "</td><td>" + funding.boardfProductSub + "</td><td>" + funding.boardfBuyDate + "</td></tr>";
						$("#fundingTableBody").append(row);
					});
				});
			});
		});
	</script>

</body>
</html>

