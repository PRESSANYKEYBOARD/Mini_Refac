<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/Hangeulum/css/donation_view.css">
<meta name="viewport" content="width=device-width,initial-scale=1">	
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--Header Start-->

<%-- <input type="hidden" value="${boardDDTO.bdSeq}" id="bdSeq" name="bdSeq"> --%>
<input type="text" value="admin" id="userid" name="userid" />
<div>
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
                    <img src="/Hangeulum/image/enlargement.png" alt="enlargement.jpg">
                </a>
            </div> <!-- header-r -->
        </div> <!-- header1 컨테이너 -->
    </div>
	<!--Header End-->
	ㄴ
<!-- 	<div class="header2"> 
		<div class="container">
			<div class="menu2">
				<ul>
	                <li><a href="/Hangeulum/donation/donation_main">전체 펀딩</a></li>
	                <li><a href="">펀딩 후기</a></li>
	            </ul>
			</div> menu2 끝
		</div> container 끝
	</div> header2 끝 -->
	
	<div class="header3">
		<div class="header3_img">
			<h3 class="title">${bdSubject }</h3>
			<img src="/Hangeulum/image/after_image/after01.jpg" width="668px" height="401px">
		</div> <!-- header3 이미지 끝 -->
		
		
		
		<!-- 첫 단 오른쪽 콘텐츠 시작  -->
		<div class="header3_summary">
			<div class="graph-wrap">
				<span class="per">
				<strong class="num">80</strong>
				%
				</span>
				 <div class="progress" aria-label="모금률">
                    <span class="progress_bar" style="width:27%;"></span>
                 </div>
			</div>
			<div class="bdExpiredate">2033.02.07~2023.05.31까지</div>
			<div class="dbdday">
			<strong class="dday">D-<span id="d-day"></span></strong>
			</div>
				<div class="credit_much">
					현재 모금 금액:
					<span class="much">${bdCumulativeAmount }원</span>
				</div> <!-- credit_much -->
				<div class="credit_goal">
					목표 금액:
					<span class="credit">${boardFGoalAmount }원 목표</span>
				</div> <!-- credit_main -->
			
			<div class="donation_button">
					<a href><button class="donation_btn">참여하기</button></a>
				</div> 
			</div> 
			


	<div class="content">
		<div class="content_left">
			<div class="content_left1">
			</div>
			
			<input type="text" id=bdSeq value="${bdseq }" >
			<%--location.href='/Hangeulum/support/noticeView?seq=' + noticeSeq
			value: query param과 동일하게 작성--%>
			<input type="text" id="userId" value="${sessionScope.userid}" >
			
						
		<div class="modifyAndDelBtnDiv">
        	<button type="button" class="btn-secondary" id="modifyBtn" name="modifyBtn" style="width: 20%; font-weight: bold">수정</button>
        	<button type="button" class="btn-third" id="delBtn" name="delBtn" style="width: 20%; font-weight: bold">삭제</button>
		</div>
		</div> <!-- 3번째 내용 끝-->
		
	</div>
			
			
			
	<!-- 		
			<div class="content_guide">
				<h4>기부 사용 계획</h4>
				<div class=content_guide_inner1>

	<style>
		table {
			border-collapse: collapse;
			width: 80%;
			margin: auto;
		}
		th, td {
			border: 1px solid black;
			padding: 10px;
			text-align: center;
		}
		th {
			background-color: #f2f2f2;
		}
	</style>
	<p>여러분들의 소중한 기부금은 아래와 같이 사용됩니다.</p>
	<table>
		<thead>
			<tr>
				<th>구분</th>
				<th>사업비</th>
				<th>집행금액</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>아동 가정 생계지원</td>
				<td>15,000,000원</td>
				<td>15,000,000원</td>
			</tr>
			<tr>
				<td>아동 가정 교육지원</td>
				<td>5,000,000원</td>
				<td>5,000,000원</td>
			</tr>
			<tr>
				<td colspan="2">총 집행금액</td>
				<td>20,000,000원</td>
			</tr>
		</tbody>
	</table>
	<p>목표금액인 20,000,000원을 모두 모금하여 정상적으로 사업을 진행할 수 있게 되었습니다.</p>
				
			
					<ul>
						<li>리워드는 해당 프로젝트 개설자가 제공합니다.</li>
						<li>100% 달성 시에만 아래 지정일에 결제됩니다.</li>
					</ul>
				</div> content_guide_inner1
				<div class="content_guide_inner2">
					<h5><strong><img src="/Hangeulum/image/funmain_image/cal.png" alt="사진">사업대상 및 기대효과 </strong></h5>
						
						<table>
							<thead>
								<tr>
									<th>사업 기간</th>
									<th>사업 대상</th>
									<th>기대 효과</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2023.06.05 ~ 2023.12.31</td>
									<td>취약계층 아동•청소년</td>
									<td>아동 가정 생계지원으로 인한 환경 개선<br>
										아동 지원을 통한 교육환경 개선</td>
								</tr>
							</tbody>
						</table>
					
				</div> content_guide_inner2
			</div> content_guide
			 -->
	
			
			
			
			
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
                    <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="../img/logo2.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
                </ul>
            </div>
        </div>
    </div>


<!--Footer End-->
			
			
			
			
			
			
			
			
			
			
			
<!-- 		</div> content_left
		
		<div class="content_right">
			<div class="reward_annae">
				<h4><strong>기부 안내</strong></h4>
				<a href="">자세히 보기 ></a>
			</div> reward_annae
			
			<div class="reward_cham">
				<div class="reward_cham1_left">
					<strong><span>0</span>원 기부 참여</strong>
				</div> reward_cham_left
			
			</div> reward_cham
			
			 -->
			
			
			
			
	    
	   	<!-- 모달 창 -->
		<div id="my_modal" class="my_modal">
				<div class="header">
					<h2><strong>펀딩 참여 전 확인하세요!</strong></h2>
					<a class="modal_close_btn"><button type="button" class="btn-close" aria-label="Close"></button></a>
				</div> <!-- header -->
				
				<div class="container">
					<p class="notice">
						펀딩은 예약 결제 신청 후, 
						<br>
						<span>100% 달성 시</span> 지정 결제일에 결제됩니다.
					</p>
					<p class="point">
						<strong><span>4월 27일</span>이 가장 빠른 결제일입니다.</strong>
					</p>
					<p class="guide">
						결제가 진행된 이후에는 단순 변심으로 인한 취소나 환불이 어려울 수 있습니다. 결제 진행전, 한걸음 > 활동내역 > 펀딩내역에서 예약 결제를 취소할 수 있습니다.
					</p>
				</div> <!-- container -->
				
				<div class="agree">
					<div class="agree_all">
						<input type="checkbox" name="chkAll" id="chkAll">
						<label for="chkAll"><strong><span>약관 및 개인정보 관련 사항(선택 동의 포함)에 <br/>모두 동의합니다.</span></strong></label>
					</div> <!-- agree_all -->
					
					<div class="agree_need">
						<input type="checkbox" name="chk" id="chk_need">
						<label for="chk_need"><span>(필수) '한걸음 펀딩 약관'에 동의합니다.</span></label>
						<a href="" class="agreeguide_link">자세히 보기</a>
					</div> <!-- agree_need -->
					
					<div class="agreeguide_preview">
						<strong>제 1조</strong>
						<br>
						이 약관은 재단법인 한걸음(이하 “회사”)이 제공하는 펀딩 서비스(이하 "서비스")의 이용과 관련하여 “회사”와 “후원자”, “개설자” 사이의 권리, 의무 및 책임, 기타 필요한 사항을 규정함을 목적으로 하여 펀딩 수익금의 일부를 취약계층에 기부하여 취약계층의 복리증진 향상에 이바지를 목적으로 합니다.
					</div> <!-- agreeguide_preview -->
					
					<div class="agree_choice">
						<input type="checkbox" name="chk" id="chk_choice">
						<label for="chk_choice"><span>(선택) 해피빈 마케팅 알림 수신에 동의합니다.</span></label>
					</div> <!-- agree_choice -->
					
					<div class="agree_choice_text">
						한걸음에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화, 이메일로 받아보실 수 있습니다.
					</div> <!-- agree_choice_text -->
				</div> <!-- agree -->
				
				<div class="agree_warming">
					모든 필수 약관에 동의해야 펀딩에 참여 가능합니다.
				</div> <!-- agree_warming -->
				
			    <div class="agree_button">
			  		<button class="button_disagree">비동의</button>
			    	<button class="button_agree">동의</button>
			   </div>
	  	  </div> <!-- 모달 끝 -->
	  	  
	   </div> <!-- 전체 요소 끝 -->
	   
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/Hangeulum/js/boardDview.js"></script> <!-- 펀딩 참여하기 - checkbox -->
<script type="text/javascript" src="/Hangeulum/js/count_price.js"></script> <!-- 수량 가격에 맞게.... -->
<script type="text/javascript" src="/Hangeulum/js/scroll.js"></script> <!-- 스크롤을 내리면? -->
<script type="text/javascript" src="/Hangeulum/js/modal.js"></script> <!-- 참여하기 버튼을 누르면 모달창이 뜬다. -->
<script type="text/javascript" src="/Hangeulum/js/checkbox.js"></script> <!-- 펀딩 참여하기 - checkbox -->


<script type="text/javascript" src="/Hangeulum/js/viewToUpdate.js"></script> <!-- updateFormLoad -->

<script type="text/javascript">
$(document).ready(function() {
	  var now = new Date();
	  // boardFExpireDate를 Date 형식으로 변환합니다.
	  var expireDate = new Date("${boardDDTO.bdExpireDate}");
	  const date = new Date("${boardDDTO.bdExpireDate}");
	  const formattedDate = date.toLocaleDateString('ko-KR', { month: 'long', day: 'numeric' });

	  // 현재 날짜와 boardFExpireDate 사이의 차이를 계산합니다.
	  var diffInTime = expireDate.getTime() - now.getTime();
	  var diffInDays = Math.ceil(diffInTime / (1000 * 60 * 60 * 24));

	  // D-day 출력
	  document.getElementById('d-day').innerText = diffInDays;
	  document.getElementById('d_day').innerText = diffInDays;
	  document.getElementById('point1').innerText = formattedDate;
});
</script>
<script>
</script>
</body>
</html>