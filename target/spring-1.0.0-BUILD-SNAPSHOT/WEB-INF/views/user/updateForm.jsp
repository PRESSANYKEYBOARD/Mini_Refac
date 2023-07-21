<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/Hangeulum/user/css/update.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<style>
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

div.header-r > a {
    text-decoration: none;
    color: black;
}

div.header-r > span.header-bar {
    display: inline-block;
    width: 1px;
    height: 16px;
    margin: 1px 1px 3px 1px;
    background-color: #d8d8d8;
    vertical-align: middle;
    content: '';
}

div.header-r > a.search_btn > img {
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



div {
    display: block;
}

body, button, input, select, table, textarea {
    font-family: NanumBarunGothic,dotum,Sans-serif;
    font-size: 14px;
    line-height: 19px;
    color: #202020;
}

.content_wrap {
    display: table;
    table-layout: fixed;
    clear: both;
    content: '';
    width: 1000px;
    margin: 50px auto 0;
}

.form_box {
    margin-top: 40px;
}

h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    font-weight: bold;
}

.my_title {
    /* font-family: NanumSquareWebFont,dotum,Sans-serif; */
    padding-top: 30px;
    font-size: 30px;
}

a.plz {
    font-family: NanumSquareWebFont,dotum,Sans-serif;
    font-size: 15px;
    font-weight: 700px;
    text-align: right;
    text-decoration: none;
    color:#333
}

.content {
    float: right;
    width: 750px;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

hr {
    margin: 18px 0 19px;
    height: 1px;
    border: 0;
    background: rgba(0,0,0,.06);
}

ul {
    list-style: none;
}

span.text {
   padding-left: 40px;
   color: #202020;
}


/* content */

.form_item:first-child {
    border-top: 1px solid #e5e5e5;
}

.form_item {
    display: inline-block;
    position: relative;
    padding-left: 220px;
    border-bottom: 1px solid #e5e5e5;
}

.form_item .item_tit {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    width: 200px;
    padding: 10px 20px;
    background: #fbfbfb;
    font-size: 16px;
    font-weight: 600;
    color: #222;
    letter-spacing: -.1px;
    box-sizing: border-box;
    vertical-align: middle;
}

.form_item .item_cont { 
    padding: 15px;
    min-width: 400px;
}

.item_cont .input {
    padding: 0 12px;
    font-size: 16px;
}

#nameDiv, #pwdDiv, #pwdDiv2, #phoneDiv, #emailDiv {
	font-size: 13px;
	color: green;
}


.userphone {
    display: inline-block;
    height: 40px;
    border: 1px solid #e5e5e5;
    vertical-align: top;
    box-sizing: border-box;
}

.email {
    font-size: 16px;
    border: 1px solid gray;
    padding: 10px;

    display: inline-block;
    height: 40px;
    border: 1px solid #e5e5e5;
    vertical-align: top;
    box-sizing: border-box;
}

span.txt {
    display: inline-block;
    margin: 10px 10px 0;
    font-weight: 700;
    font-size: 16px;
    color: #333;
    letter-spacing: -.02em;
    vertical-align: top;
}

span.required {
    color: crimson;
    font-size: 20px;
}

.section_desc {
    color: #888888;
    font-size: 15px;
    margin-top: 10px;
}

.section_tit span.optional {
    resize: none;
    color: #888888;
    font-size: 16px;
}

.input {
    display: inline-block;
    width: 300px;
    height: 40px;
    border: 1px solid #e5e5e5;
    vertical-align: top;
    box-sizing: border-box;
}

.final_btn_area {
    margin: 50px 20px 20px 10px;
    display: flex;
    justify-content: center;
}

.btn_submit {
    width: 130px;
    height: 50px;
    background: #2db400;
    font-weight: 700;
    font-size: 18px;
    color: #fff;
    border-style: none;
    border-radius: 5%;
}


.btn_update {
    width: 150px;
    height: 50px;
    background: #2db400;
    font-weight: 700;
    font-size: 18px;
    color: #fff;
    border-style: none;
    border-radius: 5%;
    margin: center;
}


    /* footer */

.footer * {
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

.footer_menu_right {
    width: 1000px;
    margin: auto;
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

.footer_info_right ul {
    list-style-type: none;
    color: #828282;
    margin: auto;
    padding: 0;
}

</style>


</head>
<body>

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
            <a href="#" class="login_btn">로그인</a>
            <span class="header-bar"></span>
            <a href="#" class="search_btn">
                <img src="/Hangeulum/img/enlargement.png" alt="enlargement.png">
            </a>
        </div>

        </div>
    </div>
  

    <div style="padding-top: 70px;"></div>

    <div class="content_wrap">


         <!-- navi bar-->
    <div class="mymenu_bar">
        <div class="my_profile_wrap">
            <img src="/Hangeulum/img/profile.jpeg" class="profile_img" alt="유저 프로필 사진"> 
            <div class="profile_nickname">
                <span class="">bitcamp3</span>
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


    <div class="content">
        <h2 class="my_title">회원정보수정</h2>
        <div class="sub_title">
            <span class="required"></span> 
                <a class="plz"></a></div>

<form id="UpdateForm">
<!-- form 부분-->
<div class="form_box">
    <div class="form_item">
        <div class="item_tit">
            <label for="id">아이디 <span class="required"></span></label>
        </div>
        <div class="item_cont">
            <input type="text" class="input" id="userid" name="userid" value="${userid}" readonly>
        </div>
    </div>
    <div class="form_item">
        <div class="item_tit">
            <label for="name">이름 <span class="required"></span></label>
        </div>
        <div class="item_cont">
            <input type="text" class="input" id="username" name="username">
            <div id="nameDiv" name="nameDiv"></div>
        </div>
    </div>
    <div class="form_item">
        <div class="item_tit">
            <label for="pwd">비밀번호 <span class="required"></span></label>
        </div>
        <div class="item_cont">
            <input type="password" class="input" id="userpassword" name="userpassword">
            <div id="pwdDiv" name="pwdDiv"></div>
        </div>
    </div>
    <div class="form_item">
        <div class="item_tit">
            <label for="repwd">비밀번호 재확인 <span class="required"></span></label>
        </div>
        <div class="item_cont">
            <input type="password" class="input" id="userpassword2" name="userpassword2" maxlength="20" required>
            <div id="pwdDiv2" name="pwdDiv2"></div>
        </div>
    </div>
    <div class="form_item">
        <div class="item_tit">
            <label for="userphone">휴대폰 번호 <span class="required"></span></label>
        </div>
        <div class="item_cont">
            <input type="text" class="userphone" name="userphone" id="userphone">
            <div id="phoneDiv" name="phoneDiv"></div>
        </div>
    </div>
    <div class="form_item">
        <div class="item_tit">
            <label for="email">이메일</label>
        </div>
        <div class="item_cont">
             <input type=text" class="email" id="useremail" name="useremail">
            <div id="emailDiv" name="emailDiv"></div>
        </div>
    </div>


    <!-- 수정 button -->
    <div class="final_btn_area">
        <button type="button" class="btn_update" id="btn_update" name="btn_update">변경하기</button>
    </div>   

</div> <!-- form_box -->
</form>

    </div> <!-- content -->
</div> <!-- content_wrap -->


 <!-- footer -->
 <div class="footer">
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
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="../js/update.js"></script>
</body>
</html>