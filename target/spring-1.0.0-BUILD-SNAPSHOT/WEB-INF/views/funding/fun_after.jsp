<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="fundingDDAY" value="${fundingMapper.fundingDDAY(boardFSendDate)}" />

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/Hangeulum/css/fun_after.css">
<meta name="viewport" content="width=device-width,initial-scale=1">	
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--Header Start-->

<input type="hidden" value="${boardFseq}">

<div>
    <div id="header">
        <div class="headerContent">
            <div class="logo"><a href ="#"></a></div>
            <img src="/Hangeulum/image/after_image/logo_main.png" alt="로고" width="250" height="60">
            <div class="menu">
                <ul>
                    <li><a href="">기부</a></li>
                    <li><a href="/Hangeulum/funding/fun_main">펀딩</a></li>
                    <li><a href="">고객센터</a></li>
                </ul>
            </div>
    
            <div class="header-r">
                <a href="/Hangeulum/user/mainIndex" class="login_btn">로그인</a>
                <span class="header-bar"></span>
                <a href="#" class="search_btn">
                    <img src="/Hangeulum/image/after_image/enlargement.png" alt="enlargement.jpg">
                </a>
            </div> <!-- header-r -->
        </div> <!-- header1 컨테이너 -->
    </div>
	<!--Header End-->
	
	<div class="header2"> 
		<div class="container">
			<div class="menu2">
				<ul>
	                <li><a href="/Hangeulum/funding/fun_main">전체 펀딩</a></li>
	                <li><a href="">펀딩 후기</a></li>
	            </ul>
			</div> <!-- menu2 끝 -->
		</div> <!-- container 끝 -->
	</div> <!-- header2 끝 -->
	
	<div class="header3">
		<div class="header3_img">
			<img src="/Hangeulum/image/after_image/after01.jpg" width="668px" height="401px">
		</div> <!-- header3 이미지 끝 -->
		<div class="header3_summary">
			<strong class="dday">D-${fundingDDAY}</strong>
			<h3 class="title">${boardFSubject }</h3>
			<div class="graph">
				<div class="rate">
					<strong class="per"></strong>
				</div> <!-- rate -->
				<div class="bar_main">
					<span class="bar" style="width: 100%;"></span>				
				</div> <!-- bar_main -->
				<div class="credit_goal">
					<span class="credit">${boardFGoalAmount }원 목표</span>
				</div> <!-- credit_main -->
				<div class="credit_much">
					<span class="much">[누적금액]원</span>
				</div> <!-- credit_much -->
			</div> <!--graph 끝  -->
			
			<div class="company_main">
				<div class="company_img">
					<img src="/Hangeulum/image/after_image/company01.png">
				</div> <!-- company_img -->
				<div class="company_text">
					<span class="company_text1">샐러드보울</span>
				</div>
				<div class="company_text_con">
					<span class="company_text2">건강을 배달하는 착한 식품</span>
				</div> <!-- company_text -->
			</div> <!-- 회사소개 메인 -->	
		
			<div class="funding_reward">
				<div class="dropdown">
					<label for="selectbox">
						<select id="selectbox">
							<option value="option1">리워드 선택하기</option>
				            <option value="option2">도시락 12종 세트</option>
						</select>
					</label>
				</div> <!-- dropdown -->
				
				<ul class="funding_reward_list">
					<li>
						<strong>도시락 12종 세트</strong>
						<button type="button" class="btn-close" aria-label="Close"></button>
					</li>
					<li>
						<div class="funding_reward_list1">
							<div class="count-wrap _count">
							    <button type="button" class="minus">감소</button>
							    <input type="text" class="inp" value="1" />
							    <button type="button" class="plus">증가</button>
							</div> <!-- count-wrap _count -->
						</div>
						<span class="price">53,000원</span>
					</li>
				</ul> <!-- funding_reward_list -->	
			</div> <!-- funding_reward -->
				
				<div class="total">
				  <div class="total_left">총 수량 <span class="total-quantity">0</span>개</div>
				  <div class="total_right">총 금액 <span class="total-price">0</span>원</div>
				</div> <!-- total -->
				
				<div class="funding_go">
				  <button type="button" class="funding_go_button">펀딩 참여하기</button>
				</div>
				
				<div class="donae">
					<label for="selectbox">
						<select id="selectbox">
							<option value="option1">가상 계좌</option>
				            <option value="option2">국민은행 054990-72-012154</option>
				            <option value="option3">신한은행 110-552-586535</option>
				            <option value="option4">농협은행 352-00246732-78</option>
				            <option value="option5">우리은행 1004-602-072538</option>
				            <option value="option6">기업은행 790-1256-2547-397</option>
				            <option value="option7">하나은행 397-125625-25647</option>
						</select>
					</label>
				</div> <!-- donae -->
			</div> <!-- funding_reward -->
		</div> <!-- header3 내용 끝 -->
	
		<div class="content_list">
			<ul>
		        <li><a href="">스토리</a></li>
		        <li><a href="">소식·후기</a></li>
	        </ul>
		</div> <!--content_list 끝 -->
		
	<div class="content">
		<div class="content_left">
			<div class="content_left1">
				<div class="content_left1-1">
					<h3>정신없는 일상 속 간편하게 즐기는 든든한 한 끼</h3>
				</div>
				<div class="content_left1-2">
					<p>바쁘게 스쳐가는 하루하루에 제대로 끼니를 챙기는 일은 어렵게만 느껴집니다. 간편하게 건강한 한 끼를 드시고 싶은 분들을 위해 준비했습니다. 프리미엄 냉동 도시락 '넉넉소반'은 엄마의 마음으로 정성껏 잘 차린 집밥입니다. 엄선한 좋은 재료로 영양과 맛을 모두 잡은 도시락을 지금 바로 만나 보세요!
					</p>
				</div>
			</div> <!-- content_left1 끝 -->
			
			<div class="content_left1">
				<div class="content_left1-1">
					<img src="/Hangeulum/image/funmain_image/sample4.jpg" width="550px" height= "550px">
				</div>
				<div class="content_left1-2">
					<h3>취향에 맞게 즐기는 가정식 도시락 12종</h3>
				</div>
				<div class="content_left1-3">
					넉넉소반 도시락은 취향에 맞게 즐기실 수 있도록 12종의 메뉴로 구성됩니다. 향긋한 깻잎 닭갈비, 타르타르 소스를 곁들인 새우부터 표고채 탕수육과 부추 훈제오리까지 입맛을 당기는 음식들을 만나보실 수 있습니다. 직접 재운 양념육과 신선 야채를 사용하고 압력밥솥으로 쌀을 안쳐 정성을 담았습니다. 밥도 100% 흑미, 강황, 현미로 만들어 더 맛있답니다.
				</div>
				<div class="content_left1-4">
				</div>
			</div> <!-- content_left2 끝 -->
			
			<div class="content_left1">
				<div class="content_left1-2">
					<h3>속은 든든하게</h3>
				</div>
				<div class="content_left1-3">
					사회적기업 디자인앤본두의 샐러드보울은 건강한 식품으로 더 건강한 사회를 만들기 위해 런칭된 브랜드입니다. 어르신에게 착한 일자리를 제공하며, 수익 중 일부는 지역 사회를 위해 기부하고 있습니다. 이번 펀딩 수익금 중 5%에 해당하는 먹거리를 사회 복지 시설에 전달할 예정입니다. 맛있는 도시락으로 속은 든든하게, 마음은 따뜻하게 채워 보시기 바랍니다.
				</div>
				<div class="content_left1-4">
				</div>
			</div> <!-- 3번째 내용 끝-->
			
			<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"> <!-- 부트스트랩 이미지 슬라이드 -->
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="/Hangeulum/image/funmain_image/sample_silde1.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="/Hangeulum/image/funmain_image/sample_silde1.jpg" class="d-block w-100" alt="...">
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div> <!-- 이미지 슬라이드 끝 -->
			
			<div class="content_left1">
				<div class="content_left1-1">
					<img src="/Hangeulum/image/funmain_image/sample_list.jpg" width="600px" height="1884px">
				</div>
				<div class="content_left1-2">
					<h4>도시락 12종 구성</h4>
				</div>
			</div> <!-- 4번째 내용 끝 -->
			
			<div class="content_left1">
				<div class="content_left1-1">
					<strong>고객의 후기</strong>
				</div>
				<div class="contetn_left1-2"> 
					<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <img src="/Hangeulum/image/funmain_image/after1.png" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="/Hangeulum/image/funmain_image/after2.png" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="/Hangeulum/image/funmain_image/after3.png" class="d-block w-100" alt="...">
					    </div>
					  </div>
					  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
					</div> <!-- 이미지 슬라이드 끝 -->
				</div> <!-- contetn_left1-2 -->
			</div> <!-- 5번째 내용 끝 -->
			
			<div class="content_guide">
				<h4>결제 방법 안내</h4>
				<div class=content_guide_inner1>
					<ul>
						<li>리워드는 해당 프로젝트 개설자가 제공합니다.</li>
						<li>100% 달성 시에만 아래 지정일에 결제됩니다.</li>
					</ul>
				</div> <!-- content_guide_inner1 -->
				<div class="content_guide_inner2">
					<h5><strong><img src="/Hangeulum/image/funmain_image/cal.png" alt="끼에엨">결제 및 발송 예정일</strong></h5>
					<ul>
						<li><span>1차 결제 : 2023.04.??, 예상 발송일 : 2023.05.??</span></li>
						<li><span>2차 결제 : 2023.05.??, 예상 발송일 : 2023.06.??</span></li>
					</ul>
				</div> <!-- content_guide_inner2 -->
			</div> <!-- content_guide -->
			
			<div class="content_sns">
				<h4><strong>참고정보</strong></h4>
				<ul>
					<li><a href=""><img src="/Hangeulum/image/funmain_image/contact.png" width="75" height="75"><span>문의하기</span></a></li>
					<li><a href=""><img src="/Hangeulum/image/funmain_image/smart.png" width="75" height="75"><span>스토어</span></a></li>
					<li><a href=""><img src="/Hangeulum/image/funmain_image/home.png" width="75" height="75"><span>홈페이지</span></a></li>
					<li><a href=""><img src="/Hangeulum/image/funmain_image/ins.png" width="75" height="75"><span>인스타그램</span></a></li>
				</ul>
			</div> <!-- content_sns -->
			
			<div class="content_reply">
			    <h4><strong>참여내역</strong></h4>
			    <p>총 <span></span>명이 참여하였습니다.</p>
			    <ul>
			        <li th:each="comment : ${commentList}">
			            <div class="reply_thumbnail"><img th:src="@{/Hangeulum/image/funmain_image/user.png}"></div>
			            <div class="reply_date" th:text="${comment.getBoardFBuyDate()}"></div>
			            <div class="reply_user" th:text="${comment.getUserId() + '님 ' + comment.getBoardFPickAmount() + '원 참여'}"></div>
			        </li>
			    </ul>
			</div>
			
			<div class="content_page"> 
			  <button type="button" class="page_pre">이전</button>
			  
			  <div class="page_numbers">
			    <button class="page_link">1</button>
			    <button class="page_link">2</button>
			    <button class="page_link">3</button>
			    <button class="page_link">4</button>
			  </div> <!-- page_numbers -->
			  
			  <button type="button" class="page_next">다음</button>
			</div> <!-- content_page -->
			
		</div> <!-- content_left -->
		
		<div class="content_right">
			<div class="reward_annae">
				<h4><strong>리워드 안내</strong></h4>
				<a href="">자세히 보기 ></a>
			</div> <!-- reward_annae -->
			
			<div class="reward_cham">
				<div class="reward_cham1_left">
					<strong><span>0</span>원 펀딩 참여</strong>
				</div> <!-- reward_cham_left -->
				<div class="reward_cham1_right">
					<span>0</span>개 남음
				</div> <!-- reward_cham_right -->
			</div> <!-- reward_cham -->
			
			<div class="reward_set">
				<h5>도시락 12종 세트</h5>
				<ul>
					<li><small>현재 <span>0</span>명 펀딩 참여</small></li>
					<li><strong>발송예상일 : "${board }"</strong></li>
				</ul>
			</div> <!-- reward_set -->
		</div> <!-- content_right -->
	</div> <!-- content 끝 -->
	
		<div class="content_hidden" aria-hidden="true"> <!-- 스크롤 히든 클래스 -->
			<div class="content_hidden_middle">
				<div class="hidden_jpg">
					<img src="/Hangeulum/image/after_image/hidden_fungo.jpg">
				</div> <!-- hidden_jpg -->
				<div class="hidden_title">
					<span class="hidden_dday">D-35</span>
					<strong class="hidden_subject">간편하게 즐기는 집밥, 가정식 도시락 12종</strong>
				</div> <!-- hidden_title -->
				<div class="hidden_fungo">
					<button class="hidden_button">참여하기</button>
				</div> <!-- hidden_fungo -->
				
				<div class="hidden_list">
					<ul>
				        <li><a href="">스토리</a></li>
				        <li><a href="">소식·후기</a></li>
		            </ul>
				</div> <!-- hidden_list -->
		</div> <!-- content_hidden_middle -->
	</div> <!-- content_hidden -->
	
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
		                    <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="/Hangeulum/image/after_image/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
		                </ul>
		            </div>
		        </div>
		    </div>
		</div>
	<!--Footer End-->
	    
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
<script type="text/javascript" src="/Hangeulum/js/count_price.js"></script> <!-- 수량 가격에 맞게.... -->
<script type="text/javascript" src="/Hangeulum/js/list.js"></script> <!-- 리스트가 바뀐다. -->
<script type="text/javascript" src="/Hangeulum/js/scroll.js"></script> <!-- 스크롤을 내리면? -->
<script type="text/javascript" src="/Hangeulum/js/modal.js"></script> <!-- 참여하기 버튼을 누르면 모달창이 뜬다. -->
<script type="text/javascript" src="/Hangeulum/js/checkbox.js"></script> <!-- 펀딩 참여하기 - checkbox -->
<script type="text/javascript">
/* 버튼 클릭 시 페이지 맨 위로 자연스럽게 스크롤되도록 설정 */
document.querySelector('.hidden_button').addEventListener('click', function() {
  window.scrollTo({
    top: 0,
    left: 0,
    behavior: 'smooth'
  });
});
</script>
<script type="text/javascript">
$.ajax({
	  url: '/Hangeulum/funding/getCommentList', // COMMENT_F 테이블 정보를 가져올 url
	  method: 'GET',
	  data: { boardFSeq: boardFSeq }, // 해당 게시글의 번호를 파라미터로 전달
	  success: function(response) {
	    // 가져온 정보를 이용하여 참여내역 리스트의 html 코드를 생성
	    var commentListHtml = '';
	    for (var i = 0; i < response.length; i++) {
	      commentListHtml += '<li>' +
	                          '<div class="reply_thumbnail"><img src="' + response[i].fileName + '"></div>' +
	                          '<div class="reply_date">' + response[i].boardFBuyDate + '</div>' +
	                          '<div class="reply_user">' + response[i].userId + '님 ' + response[i].boardFPickAmount + '원 참여</div>' +
	                        '</li>';
	    }
	    
	    // 생성된 html 코드를 참여내역 리스트의 ul 태그 내부에 추가
	    $('.content_reply ul').append(commentListHtml);
	    
	    // 참여내역 총 인원 수 업데이트
	    $('.content_reply p span').text(response.length);
	  }
	});
</script>
</body>
</html>