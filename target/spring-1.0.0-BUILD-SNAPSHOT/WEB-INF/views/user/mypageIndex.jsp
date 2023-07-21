<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<style>
@charset "UTF-8";


@font-face {
    font-family: 'NanumBarunGothic';
    font-style: normal;
    font-weight: 400;
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
   }
   
   @font-face {
    font-family: 'NanumBarunGothic';
    font-style: normal;
    font-weight: 700;
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot');
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.ttf') format('truetype')
   }
   
   @font-face {
    font-family: 'NanumBarunGothic';
    font-style: normal;
    font-weight: 300;
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot');
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.ttf') format('truetype');
   }
   
   .nanumbarungothic * {
    font-family: 'NanumBarunGothic', sans-serif;
   }


/* header */
    #header {
    border-bottom:1px solid #ddd;
    position: fixed;
    width: 100%;
    background-color: white;
    Z-index:1000;
    }
    
    #header .container{
    display:flex;
    align-items: center;
    min-width: 800px;
    }
    
    #header .container > div.logo h1{
    margin: 0;
    }
    
    #header .container > div.logo a{
    margin:0;
    font-size: 30px;
    font-weight: bold;
    color:yellowgreen;
    text-decoration: none;
    }
    
    #header .container > div.menu{
    flex:1;
    }
    
    #header .container > div.menu ul {
    display: flex;
    justify-content:center;
    list-style: none;
    margin: 0;
    padding: 0;
    }
    
    #header .container > div.menu ul li{
    margin-left: 50px;
    margin-right: 30px;
    }
    
    #header .container > div.menu ul li a{
    display: block;
    padding: 20px 0;
    font-size: 20px;
    font-weight: 800;
    color: black;
    text-decoration: none;
    }

    div.header-r > a{
        text-decoration: none;
        color: black;
    }
    
    div.header-r > span.header-bar{
        display: inline-block;
        width: 1px;
        height: 16px;
        margin: 1px 1px 3px 1px;
        background-color: #d8d8d8;
        vertical-align: middle;
        content: '';
    }
    
    div.header-r > a.search_btn > img{
        width: 23px;
        height: 23px;
        vertical-align: top;
        margin-top: 1px;
    }
    

/* navi, mymenu */

    .mymenu_bar {
        position: relative;
        float: left;
        width: 215px;
        margin-top: 13px;
    }

    .main_content {
        overflow-y: scroll;
    }

    .my_profile_wrap {
        padding: 29px 10px 27px;
        border: 1px solid #777d83;
        background-color: #848b91;
        text-align: center;
        color: #fff;
    }

    .profile_img {
        border-radius: 50%;
    }

    .profile_nickname {
        margin-top: 10px;
        font-size: 15px;
    }

    .mymenu {
        padding: 48px 34px 44px 32px;
        border: 1px solid #dcdcdc;
        border-top: 0;
        background-color: #fafafa;
    }

    .mymenu_item {
        display: block;;
        position: relative;
        margin-top: 30px;
        font-family: NanumSquareWebFont,dotum,Sans-serif;
        font-size: 17px;
    }

    .mymenu_item a {
        text-decoration: none;
        color: #202020;
        font-family: NanumSquareWebFont,dotum,Sans-serif;
    }

    .mymenu_sub_item {
        display: block;
        position: relative;
        margin-top: 10px;
        font-family: NanumSquareWebFont,dotum,Sans-serif;
        font-size: 14px;
    }

    .mymenu_sub_item a {
        text-decoration: none;
        color: #828282;
        font-family: NanumSquareWebFont,dotum,Sans-serif;
    }

    .hr {
        margin-top: 30px;
        margin-bottom: 20px;
        border: 1px solid #dcdcdc;
    }


/* content, main */

    body, button, input, select, table, textarea {
    font-family: NanumBarunGothic,dotum,Sans-serif;
    font-size: 14px;
    line-height: 19px;
    color: #202020;
}

.content {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    flex: 8.5;

    margin-bottom: 10px;
    border: 1px solid #bcbcbc;
    background-color:white;
    justify-content: space-between;
}

table {
    width: 100%;
    border: 1px solid #444444;
  }

/* .content_box {
    display: table-cell;
    border: 1px solid #fbfbfb;
    padding: 38px 33px 37px 38px;
    vertical-align: top;
    width: 800px;
    height: 300px;
    display: flex;
} */

.content_box {
   display: table;
   table-layout: fixed;
   position: relative;
   width: 800px;
   border: 1px solid #e0e0e0;
   margin-bottom: 13px;
}


.box_left, .box_right {
   display: table-cell;
   padding: 38px 33px 37px 38px;
   vertical-align: top;
}

/* .box_left {
    flex: 5;
    float: left;
    background-color: #fbfbfb;
    height: 230px;
    margin-right: 30px;
} */

.box_right::before {
   position: absolute;
   top: 21px;
   bottom: 21px;
   left: 50%;
   width: 1px;
   background-color: rgba(0,0,0,.06);
   content: '';
}

.box_right {
    flex: 5;
    /* background-color: #fbfbfb; */
    height: 230px;
}

/*
.box_title {
    border-bottom: 1px solid #f0f0f0;
    padding-bottom: 31px;
}
*/

/* .box_title h3 {
    padding-bottom: 31px;
    font-size: 25px;
    float: left;
    margin-top: 8px;
    font-size: 19px;
    font-weight: 400;
    line-height: 1.27;
} */

.box_title h3 {
    border-bottom: 1px solid #f0f0f0;
    padding-bottom: 25px;
    font-size: 20px;
}

.number_wrap {
    float: right;
    font-size: 30px;
    line-height: 41px;
    color: #00ab33;
    float: left;
    margin: 30px 0px 0px 70px;
}

span.cash_total {
    font-weight: 1000px;
}

.content_wrap {
    width: 1000px;
    margin: 50px auto 0;
}

.main {
   float: right;
   /*width: 885px;*/
   width: 750px;
   margin: 15px;
}


div {
    display: block;
}

ul {
    list-style: none;
}


.guide_npay {
   display: table;
   width: 800px;
   height: 76px;
   margin-top: 9px;
   background-color: #fbfbfb;
   border: 1px solid rgba(0,0,0,.12);
}

.icon_save {
   backgroud-position: -811px -523px;
   width: 80px;
   height: 55px;
   display: inline-block;
   margin: 0 23px 0 29px;
   vertical-align: middle;
}

.guide_text {
   display: table-cell;
   width: 100%;
   padding-top: 2px;
   font_size: 18px;
   line-height: 1.35px;
   color: #484848;
   vertical-align: middle;
}

 strong.highlight {
   font-weight: 700;
   color: #00ab33;
}

.news_tit_box {
    margin-top: 20px;
    margin-left: 20px;
}

.list_box {
   width: 800px;
}

.my_recent_news_tit {
    display: inline-block;
    font-family: NanumSquareWebFont,dotum,Sans-serif;
    line-height: 27px;
    font-weight: 800px;
    color: #202020;
    vertical-align: middle;
    padding-top: 20px;
}

.activity_wrap {
    marginm-top: 30px;
}

.activity_month {
    position: relative;
    margin: -3px 0;
    background-color: #fff;
    text-align: center;
    line-height: 20px;
    margin-top: 20px;
}

.activity_month::before {
   position: absolute;
   top: 50%;
   right: 0;
   left: 0;
   height: 1px;
   background-color: #e0e0e0;
   content: '';
}

a.text {
    display: inline-block;
    font-size: 15px;
    color: #828282;
    font-family: NanumBarunGothic,dotum,Sans-serif;
    text-decoration: none;
}

strong.text {
    font-family: NanumSquareWebFont,dotum,Sans-serif;
    padding: 3px 0px;
}

a.text {
    font-family: NanumSquareWebFont,dotum,Sans-serif;
    text-decoration: none;
    color: #828282;
}

.price strong.number {
    float: left;
}

span.number {
    position: relative;
    padding: 0 16px;
    background-color: #fff;
    font-family: NanumSquareWebFont,dotum,Sans-serif;
    font-size: 18px;
    font-weight: 700;
    vertical-align: top;
}


.activity_list {
    border: 1px solid #e0e0e0;
    width: 800px;
}

div .price {
    float: center;
}

.inner {
    display: table;
    table-layout: fixed;
    position: relative;
    width: 100%;
    height: 170px;
    border-bottom: 1px solid gainsboro;
}

.left {
    display: table-cell;
    width: 92px;
    vertical-align: middle;
}

.center {
    display: table-cell;
    vertical-align: middle;
    padding-left: 10px;
}

.center_last {
    display: table-cell;
    vertical-align: middle;
    padding-left: 10px;
    border-bottom: none;
}

.date {
    display: inline-block;
    font-weight: 400;
    color: #828282;
}

.text {
    display: block;
    font-size: 16px;
    padding: 3px 0px;
}

.activity_title {
    display: block;
    text-decoration: none;
    color: black;
    padding: 3px 0px;
}

.right {
    display: table-cell;
    width: 180px;
    text-align: right;
    vertical-align: middle;
}

    
/* footer */
    .footer {
        font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
        box-sizing: border-box;
    }

    .footer {
        position: relative;
        background: #f6f6f6;
        padding-top: 50px;
        background-color: #fff;
        font-size: 14px;
        line-height: 19px;
        color: #202020;
    }

    .footer_menu {
        clear: both;
        display: flex;
        padding: 10px 0;
        border: 1px solid #bcbcbc;
        background-color:#f6f6f6;
    }
    /*
    .footer_menu_left {
        flex: 1;
        float: left;
    }
    */

    .footer_menu_right {
        width: 1000px;
        margin: auto;
    /*
        flex: 9;
        float: right;
    */
    }

    .footer_menu_right ul {
        list-style-type: none;
        color: #828282;
        margin: 0;
        padding: 0;
        min-width: 1000px;
    }

    .footer_menu_right ul li {
        display: inline-block;
        margin: 15px 20px 15px 0;
        vertical-align: middle;
    }

    .footer_menu_right ul li a {
        text-decoration: none;
        color: #828282;
    }

    .item {
        display: inline-block;
    }

    .footer_info_wrap {
        box-sizing: border-box;
        color: rgb(130, 130, 130);
        display: block;
        font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
        font-size: 14px;
        line-height: 19px;
        padding-bottom: 50px;
        padding-top: 22px;
        position: relative;
        width: 1000px;
        margin: auto;
    }

    .footer_info_inner {
        display: flex;
        width: 1000px;
        margin: auto;
    }

    /*
    .footer_info_left {
        flex: 1;
        float: left;
    }
    .footer_info_right {
        flex: 9;
        float: right;
    }
    */

    .footer_info_right ul {
        list-style-type: none;
        color: #828282;
        margin: auto;
        padding: 0;
    }

</style>

</head>

<body>

<!-- header -->
    <div id="header">
        <div class="container">
            <div class="logo"><img src="/Hangeulum/img/logo_hd.png" width="150"></img></div>
        <div class="menu">
            <ul>
                <li><a href="">기부</a></li>
                <li><a href="">펀딩</a></li>
                <li><a href="">고객센터</a></li>
            </ul>
        </div>
    
        <div class="header-r">
            <a href="/Hangeulum/user/loginForm" class="login_btn">${userid}</a>
            <span class="header-bar"></span>
            <a href="#" class="search_btn">
                <img class="profile_img" src="profile_img" alt="enlargement.png">
            </a>
        </div>
        </div>
    </div>



<!-- content -->
<div style="padding-top: 70px;"></div>

    <div class="content_wrap">

    <!-- navi bar-->
    <div class="mymenu_bar">
        <div class="my_profile_wrap">
            <a href="/Hangeulum/user/profileuploadForm"><img width="50" height="50" src="/Hangeulum/user/profileupload" class="profile_img" alt="유저 프로필 사진"></a>
            <a href="/Hangeulum/user/uploadForm"></a>
            <div class="profile_nickname">
                <span class="levelname">bitcamp3</span>
                <div class="userClass"></div>
                
            </div>
        </div>
        <div class="mymenu">
            <div class="mymenu_item"><a href="/Hangeulum/user/mypageIndex">MY홈</a></div>
            <hr class="hr">
            <div class="mymenu_item"><a href="#">활동내역</a></div>
            <hr class="hr">
            <div class="mymenu_item"><a href="/Hangeulum/user/account">정기결제관리</a></div>
            <hr class="hr">
            <div class="mymenu_item"><a>회원정보관리</a>
                <div class="mymenu_sub_item"><a href="/Hangeulum/user/updateForm">회원정보 변경</a></div>
                <div class="mymenu_sub_item"><a href="/Hangeulum/user/deleteForm">회원탈퇴</a></div>
            </div>
            <hr class="hr">
            <div class="mymenu_item"><a href="/Hangeulum/user/receipt">연말정산</a></div>
        </div>
    </div> <!-- mymenu_bar -->

    
    
<input type="hidden" id="userid" value="${sessionScope.userid }">  
    
    <!-- main -->
    <div class="main">
        <div class="content_box">
            
            <div class="box_left">
                    <div class="box_title">
                        <h3>나의 기부금액</h3>
                        <span class="number_wrap">
                        <span class="cash_total_dona" id="cash_total_donation"></span> 
                            원
                        </span>
                    </div>
                </div>
        
                <div class="box_right">
                    <div class="box_title">
                        <h3>나의 펀딩금액</h3>
                        <span class="number_wrap">
                            <span class="cash_total_funding" id="cash_total_funding"></span> 
                            원
                        </span>
                    </div>
                </div>
            
        </div>
        
        <div class="guide_npay">
        	<div class="icon">
        		<span class="icon_save"><img src="/Hangeulum/img/pig.png" width="100" alt="저금통"></span>
        	</div>
        	<div class="guide_text">
        		<span> 정기기부 시작하고</span>
        		<strong class="highlight">매달 포인트 10% 더 받기</strong>
        	</div>
        </div>
        
        <div class="timeline">
            <br>
            <div class="news_tit_box">
                <strong class="my_recent_news_tit">내 소식</strong>
            </div>
            <div class="list_box">
                <div class="activity_month">
                    <span class="number">2023.04</span>
                </div>

                <br>

                <div class="activity_list">
                <ul class="list">
                    <li class="bean_use">
                        <div class="inner">
                            <div class="left">
                                <div class="cong_success">
                                    <img src="/Hangeulum/img/usebean.png" width="100px; height="100px;">
                                </div>
                            </div>
                            <div class="center">
                                <strong class="date">2023.04.17</strong>
                                <strong class="text">보유금액 사용</strong>
                                <span class="activity_title">[기부] 독거장애인 어르신의 특별한 5월</span>
                            </div>
                            <div class="right">
                                <div class="price">
                                    <strong class="number">-20,000원</strong>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="donation">
                        <div class="inner">
                            <div class="left">
                                <div class="donation_success">
                                    <img src="/Hangeulum/img/success.png" width="100px; height="100px;">
                                </div>
                            </div>
                            <div class="center">
                                <strong class="date">2023.04.17</strong>
                                <span class="activity_title">[일시기부] 독거장애인 어르신의 특별한 5월</ㄴ>
                                <span class="text">고흥군장애인복지관</span>
                            </div>
                            <div class="right">
                                <div class="price">
                                    <strong class="number">200,000원</strong>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="bean_extinction">
                        <div class="inner">
                            <div class="left">
                                <!-- <div class="cong_cancelled"></div> -->
                                <img src="/Hangeulum/img/extinction.png" width="100px; height="100px;">
                            </div>
                            <div class="center_last">
                                <strong class="date">2023.04.01</strong>
                                <strong class="text">포인트 소멸</strong>
                                <span class="activity_title">[2022_10월] 쇼핑 텍스트 리뷰</span>
                            </div>
                            <div class="right"></div>
                        </div>
                    </li>
                </ul>
        </div> <!-- activity_list -->
        
        </div> <!-- list_box -->
        </div> <!-- timeline -->
   </div> <!-- main -->
</div> <!-- content_box -->
</div> <!-- content_wrap -->




    <!-- footer -->
    
        <div class="footer_menu">
            <!-- <div class="footer_menu_left"></div> -->
            <div class="footer_menu_right">
                <ul>
                    <li><a href="">공지사항</a></li>|
                    <li><a href="">&nbsp;&nbsp;이용약관</a></li>|
                    <li><a href="">&nbsp;&nbsp;고객센터</a></li>|
                    <li><a href="">&nbsp;&nbsp;기업제휴 문의</a></li>|
                    <li><a href="">&nbsp;&nbsp;FAQ</a></li>|
                </ul>
            </div>
        </div>

        <div class="footer_info_wrap">
            <div class="footer_info_inner">
                <!-- <div class="footer_info_left"></div> -->
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
                        <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="../img/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; OneStep Corp. All Rights Reserved.</div>
                    </ul>
                </div>
            </div>
        </div>
    

	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script type="text/javascript" src="/Hangeulum/js/mypage.js"></script>
	
	
</body>
</html>