<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>today_donation</title>
    
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
        integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    

    <link rel="stylesheet" href="/Hangeulum/css/donation_today.css">
</head>
<body>
  <div>
    <div id="header">
        <div class="container">
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
        </div>
    </div>
    </div>
</div>




    <!-- 큰 사진   -->
    <img id="static_pic" src="/Hangeulum/image/todaydonation.png" alt="오늘의기부사진">


    <!-- 기부 슬라이드 타이틀  -->
    <div class="container">
        <div class="static_title_wrap">
            <span class="static_title">나의 기부금액이 100% 전달되는&nbsp;</span><span class="onestep_donation">한걸음 기부</span></div>
    </div>






   <!-- 기부 슬라이드 사진 영역  -->
   <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="https://happybean-phinf.pstatic.net/20210629_142/1624946809069CmdqK_PNG/%EA%B8%B0%EB%EA%B8_%EA%B2%BD%EC%B0%EC%B4%EB%A5%B4%EB%B3%B5%EC%BC%ED.png" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://happybean-phinf.pstatic.net/20210629_189/1624948482940rRW81_PNG/%EA%B8%B0%EB%EA%B8_%B8%ED%EA%B2%BD%EC%B4%EB%B0%ED.png" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://happybean-phinf.pstatic.net/20210629_87/1624946819242qkE7e_PNG/%EA%B8%B0%EB%EA%B8_%D7%D9%B4%EB%B0%EC%B4%EC.png" class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>


    <!-- 총 기부금  + 총 기부자  -->
       <div class="total_donation_wrap_wrap">
        <div class="donation">
          <div class="total_donation_wrap">
              <span class="total_donation">총 기부금</span>
              <span class="total_price">15,211,900,211원</span>
            </div>
                <div class="total_donation_detail">
                  <div class="total_donation_wrap2">
                    <p class="donation_name">사용자  기부금 </p>
                    <p class="donation_name">한걸음  기부금 </p>
                    <p class="donation_name">파트너  기부금</p>
                    </div>
                  <div class="total_donation_price">
                      <p class="donation_price">1,000,000원</p>
                      <p class="donation_price">1,000,000원</p>
                      <p class="donation_price">1,000,000원</p>
                  </div>
                </div>
                <div class="total_donor_wrap" >
                  <span class="total_donor">총 기부자</span>
                  <span class="total_price">11,440,380명</span>
              </div>
      </div>
  </div>


        <!-- 단체 수 모금함 수 -->
     

        <div class="group">
  				<div class="group_left">단체수</div>
  				<div class="group_right">7841개 
  				
  					<div class="group_right_left">모금함수</div>
  					<div class="group_right_right">134,920개</div>
  				
  				</div>
   			 </div>
   			 
       

       <!-- 펀딩 슬라이드 타이틀  -->
    <div class="container">
      <div class="static_title_wrap2">
          <span class="static_title2">세상을 바꾸는 이들을 응원하는 &nbsp;</span><span class="onestep_funding">한걸음 펀딩</span></div>
        </div>






        <!-- 펀딩 슬라이드  -->
        <div id="carouselExampleIndicators22" class="carousel slide" data-bs-ride="true">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="https://happybean-phinf.pstatic.net/20210629_299/1624946848218U6kyr_PNG/%A9%ED%EA%B8_%EA%B2%BD%EC%D7%D9.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="https://happybean-phinf.pstatic.net/20210629_61/1624946840166jq6qK_PNG/%A9%ED%EA%B8_%A4%EC%EC%B9%B4%EC%B8%EB.png" class="d-block w-100" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators22" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators22" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>



        
    <!--총 펀딩 참여금 -->

<div class="container">
    <div class="total_funding_wrap_wrap">
      <div class="funding">
        <div class="total_funding_wrap">
            <span class="total_funding">총 펀딩 참여금</span>
            <span class="total_price">870,900,211원</span>
          </div>
              <div class="total_funding_detail">
                    <div class="total_funding_wrap2">
                      <p class="funding_name">총 펀딩 참여자 </p>
                      <p class="funding_name">참여한 펀더 수</p>
                      <p class="funding_name">개설한 펀딩 수</p>
                      </div>
                    <div class="total_funding_price">
                        <p class="funding_price">16,851명</p>
                        <p class="funding_price">83개</p>
                        <p class="funding_price">87개</p>
                    </div>
              </div>
        </div>
    </div>
  </div>


    <br><br><br><br>

              <!-- 펀딩 공감가게 오픈 기업 수  -->
              <div class="group2">
    
               <img src="/Hangeulum/image/store.png" alt="로고" width="50" height="50" class="group2_left">공감가게 오픈수</span>
               <span class="group2_right">210개</span>
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
                  <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="/Hangeulum/image/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
              </ul>
          </div>
      </div>
  </div>
</div>


<!--Footer End-->



      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>