<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
        integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
        integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous">
    </script>

    <link rel="stylesheet" href="/Hangeulum/user/css/maintest2.css">
</head>
<body>

<input type="hidden" value="${userid}" id="kakao_email" name="kakao_email"/>

<!--Header Start-->
<div>
    <div id="header">
        <div class="headerContent">
            <div class="logo"><a href ="#"></a></div>
            <img src="/Hangeulum/image/한걸음로고.png" alt="로고" width="250" height="60">
            <div class="menu">
                <ul>
                    <li><a href="/Hangeulum/donation/donation_main">기부</a></li>
                    <li><a href="/Hangeulum/funding/fun_main">펀딩</a></li>
                    <li><a href="">고객센터</a></li>
                </ul>
            </div>
    
            <div class="header-r" id="header-r" name ="header-r">
                <a href="/Hangeulum/user/loginForm" class="login_btn">로그인</a>
                <span class="header-bar"></span>
                <a href="#" class="search_btn">
                    <img src="/Hangeulum/image/funmain_image/enlargement.png" alt="enlargement.jpg">
                </a>
            </div>
            
            <!-- 테스트 -->
            <div class="header-r" id="header-r-2" name ="header-r-2">
                <a href="/Hangeulum/user/mypageIndex">${userid}님 로그인</a>
                <span class="header-bar"></span>
             		
                    <img src="${kakao_profile}" width="30" height="30">
               		<br>
               		<a href="/Hangeulum/user/logOut">로그아웃</a>
            </div>
            
            
            
        </div>
    </div>
</div>
<!--Header End-->



<!-- 이미지 슬라이드 -->



<div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
 
 
  <div class="carousel-inner">
  
  	<div class="tmp_for_bg">
    <div class="carousel-item active">
      <img class="slide1" src="/Hangeulum/image/exam10.jpg"  alt="..." >
    </div>
    
   
    
   
    <div class="carousel-item">
      <img class="slide1" src="/Hangeulum/image/exam11.jpg" alt="...">
    </div>
    
   
    
   
    <div class="carousel-item">
      <img class="slide1" src="/Hangeulum/image/exam12.jpg"  alt="...">
    </div>
    
    </div>
  </div>
 
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden"></span>
  </button>
</div>





<div id="content2">
    <div class="container">
        <div class="category">
            <ul>    
                <li>
                   <button>#4월의 한걸음</button>
                </li>

                <li>
                   <button>#강릉산불</button>
                </li>
                <li>
                   <button>#기업이랑 기부</button>
                </li>
            
            </ul>
        </div>
    </div>
</div>

<!--donation text -->
<div class="donationtext">
<div class="container">
<p><a href="#">100% 전달하는 기부></a></p>
</div>
</div>


<!-- Grid start  -->
      <!-- Grid는 총 컬럼의 개수가 12개이다 -->
      <div class="container text-center">
        <div class="row">
          <div class="col-md-4 col-sm-6" > <!--  중간크기 화면까지는 제대로 3개씩 보여줌 보이다가 더 작은 화면에서는 사진이 1개로 보여짐 //모든 div를 이거로 바꿔줘야함//화면의 너비에 따라 바꿔주면 됨 -->
            <div onclick="cardclick()" class="card" style="width: 18rem;">
           <img src="/Hangeulum/image/44.jpg">
              <div class="card-body">
                <h5 class="card-title">희귀병 윤진이가 건강하게 자랄 수 있도록 도와주세요.</h5>
                <p class="card-text">태어날 때 청색증(호흡곤란)으로 인큐베이터에서 생활한 윤진이(가명, 7세). 이후 정밀검사를 통해 뇌병변 장애 판정을 받고 *묘성증후군이라는 희귀병 진단을 받게 되었습니다. 희귀병 특성상 다양한 증상이 나타나 정기검진과 재활치료를 받고 있습니다. 사시 수술을 했지만 경과에 따라 추가 수술을 받아야 하며 심장에 구멍이 나있어 문제가 생길 시 수술을 진행해야 합니다. 턱이 맞지 않고 발성도 안정적이지 않아 발음이 부정확한 윤진이. 언어는 다른 사람의 말을 겨우 따라 하는 정도입니다.</p>
                   <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
                 </div>
            </div>
            </div>
          <!-- *************************  -->
          <div class="col-md-4 col-sm-6">
           <div class="card" style="width: 18rem;">
        <img src="/Hangeulum/image/5.png">
           <div class="card-body">
             <h5 class="card-title">화재의 위기를 견뎌낸 거주인들의 여름 물놀이 선물.</h5>
             <p class="card-text">따뜻한 햇볕과 산속 꽃 향기가 차오르던 봄이 오며 형광 색색으로 물들었던 장태산에 큰 불이 찾아 왔습니다. 큰 불씨는 순식간으로 산길을 타며 퍼져 나가고 매서운 화재 연기와 거주인들을 대피 시키는 선생님들의 다급한 목소리, 소방차 사이렌 소리로 가득 차고 말았습니다. 각 거주시설 선생님들의 빠른 대처 방법으로 인해 모든 시설 거주인들 모두 인명 피해 없이 최종 집결 장소로 모일 수 있었지만 갑작스러운 대피 상황으로 인해 대피 장소 모두 아비규환이었으며 스스로 거동 할 수 없는 거주인, 휠체어로 이동해야 하는 거주인 등 각 시설의 거주인 모두가 1,2,3층으로 나누어 뒤 섞이며 잠을 청하거나 영양적 음식 섭취의 어려움은 물론이고 기본적으로 필요한 케어를 하기에 모든 장소가 협소하거나 부족하여 하루 빨리 모든 불씨가 잦아들기 만을 바랄 뿐이었습니다.</p>
                <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
              </div>
         </div>
         </div>
          <!-- *************************   반응형으로 크기에 따라 사진이 자동 조절되어서 보임--> 
          <div class="col-md-4 col-sm-6"> 
           <div class="card" style="width: 18rem;">
        <img src="/Hangeulum/image/6.jpg">
           <div class="card-body">
             <h5 class="card-title">발암 물질 때문에 아이를 안아줄 수 없는 아빠 소방관</h5>
             <p class="card-text">방화복은 일반 세탁기로 세탁할 수 없지만, 기동복과 활동복은 가정에서 세탁이 가능합니다. 간혹 집으로 가져와 세탁을 하기도 하지만 그날의 출동현장이 치열했다면 퇴근 후에 시간을 들여서라도 소방서에서 세탁을 하고 갑니다. 오늘 다녀온 출동현장에서 나도 모르게 묻어 있을지 모를 유해물질과 사고피해자의 혈흔 또는 훼손된 신체 일부가 가족들과 함께 쓰는 세탁기 안에서 뒤섞일까 미안하기도, 걱정되기도 하기 때문입니다.</p>
               <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
           </div>

         </div>
         </div>
		
		

		<!-- 펀딩텍스트 -->
		<div class="fundingtext">
		
		<a href="#"><p>소셜벤처를 먼저 만나는 펀딩></p></a>
	
		</div>
	
	
	<!-- test -->
		 <div class="container text-center">
		<div class="row">
	
          <!-- *************************  -->
          <div class="col-md-4 col-sm-6">
            <div class="card" style="width: 18rem;">
         <img src="/Hangeulum/image/2.jpeg">
            <div class="card-body">
              <h5 class="card-title">제목</h5>
              <p class="card-text">내용</p>
                <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
               </div>
          </div>
          </div>
          
             <!-- *************************  -->
             <div class="col-md-4 col-sm-6">
                <div class="card" style="width: 18rem;">
             <img src="/Hangeulum/image/3.jpeg">
                <div class="card-body">
                  <h5 class="card-title">제목</h5>
                  <p class="card-text">내용</p>
                    <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
                   </div>
              </div>
              </div>

                 <!-- *************************  -->
          <div class="col-md-4 col-sm-6">
           <div class="card" style="width: 18rem;">
         <img src="/Hangeulum/image/3.jpg">
           <div class="card-body">
              <h5 class="card-title">제목</h5>
              <p class="card-text">123</p>
                  <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
                
               </div>
               
          </div>
          </div>

</div>
</div>	



             <!-- *************************  -->
             <div class="col-md-4 col-sm-6">
                <div class="card" style="width: 18rem;">
                
             
             <img src="/Hangeulum/image/4.jpeg">
               
                <div class="card-body">
                  <h5 class="card-title">123456</h5>
                  <p class="card-text"></p>
                     <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:80%;"></span>
                  </div>
                  
                
                  <strong class="donation_percent">
                  	50
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  </div>
                  <!--  -->
                   
              </div>
              </div>

                 <!-- *************************  -->
          <div class="col-md-4 col-sm-6">
            <div class="card" style="width: 18rem;">
         <img src="/Hangeulum/image/4.jpg">
            <div class="card-body">
              <h5 class="card-title">제목</h5>
              <p class="card-text">내용</p>
                 <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
               </div>
          </div>
          </div>

             <!-- *************************  -->
             <div class="col-md-4 col-sm-6">
                <div class="card" style="width: 18rem;">
             <img src="/Hangeulum/image/5.png">
                <div class="card-body">
                  <h5 class="card-title">제목</h5>
                  <p class="card-text">내용</p>
                     <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
                   </div>
              </div>
              </div>
     
        </div>
        
      </div>
	<br><br>
      <!-- Grid end  -->



	  <!-- status-->

<div class="status-wrap">
	<div class="status-inner">
		<h3 class="status-title">오늘의 참여현황</h3>
		<span class="donation-title">여러분의 응원이 이만큼 모였어요</span>
	
		<dl class="donation-status-list">
			<div class="donation-status-item-1">
				<dt class="donation-status-term">기부참여</dt>
				<dd class="donation-status-data">
					<span class="donation-status-point">
						<span>1,539</span>
					</span>
					"명"
				</dd>
				
			</div>
			<div class="donation-status-item-1">
					<dt class="donation-status-term">기부금액</dt>
					<dd class="donation-status-data">
					<span class="donation-status-point">
						<span>4,981,000</span>
					</span>
					"원"
				</dd>
			
			
			</div>
			<div class="donation-status-item-1">
				<dt class="donation-status-term">펀딩 참여</dt>
					<dd class="donation-status-data">
					<span class="donation-status-point">
						<span>22</span>
					</span>
					"명"
				</dd>
				
			
			</div>
			<div class="donation-status-item-1">
			
			<dt class="donation-status-term">참여 금액</dt>
					<dd class="donation-status-data">
					<span class="donation-status-point">
						<span>1,062,300</span>
					</span>
					"원"
				</dd>
			
			
			
			</div>
		
		</dl>
	
	</div>


</div>

	

<div class="more_btn">
    <div class="container"></div>
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
                    <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="../img/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
                </ul>
            </div>
        </div>
    </div>
</div>


<!--Footer End-->





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/Hangeulum/js/main.js"></script>


<script>
$(function(){
	$('#header-r-2').hide();
	
	if($('#kakao_email').val()){
		$('#header-r').hide();
		$('#header-r-2').show();
	}
	else{
		$('#header-r').show();
	}
	
}); 

function cardclick(){
	location.href="/Hangeulum/donation/donation_main";
}

</script>


</body>
</html>