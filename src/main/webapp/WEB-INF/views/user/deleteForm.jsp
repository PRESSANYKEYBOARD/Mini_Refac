<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/Hangeulum/user/css/delete.css">
    
    <script src="
    https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css" />
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
	
	<!-- 모달창 -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />


<style type="text/css">

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

div #pwdDiv, #pwdDiv2, #pwdDiv3 {
	color: green;
	font-size: 14px;
	margin-top: 4px;
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

.section {
    margin-top: 40px;
    padding: 48px 48px 0px;
    border: 1px solid #e0e0e0;
    border-radius: 7px;
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
    /* font-size: 22px; */
    /* line-height: 26px; */
    letter-spacing: -.3px;
    margin-top: 30px;
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

em.point {
    background-position: -888px -550px;
    height: 18px;
    display: inline-block;
    margin: 2px 3px 0 0;
    content: '';
    display: block;
    font-size: 16px;
    color: #00ab33;
    font-style: normal;
}

span.point {
    color: #00ab33;
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

.section {
    margin-top: 40px;
    padding: 48px 48px 48px;
    border-top: 1px solid #e0e0e0;
}

.sub_tit h4 {
    padding-bottom: 30px;
}

.tit_txt h6 {
    font-weight: 800px;
}

.tit_txt {
    margin-bottom: 10px;
    font-size: 16px;
    font-weight: normal;
    font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
}

.info_list li {
    position: relative;
    padding-left: 5px;
    margin-top: 4px;
    font-size: 14px;
    color: #666;
}

.dst_prsn {
    padding-bottom: 40px;
}

table {
    border-collapse: collapse;
    width: 100%;
    text-align: center;
    table-layout: fixed;
    color: #666;
    line-height: 28px;
}

.law td {
    border: 1px solid #999;
    line-height: 30px;
}

td:first-child {
    background-color: #f5f5f5;
}

.comment {
    width: 100%;
    height: 40px;
    border: 1px solid #999;
    border-radius: 5px;
    text-indent: 10px;
    font-size: 14px;
}

.final_btn_area {
    margin: 50px 20px 20px 10px;
    display: flex;
    justify-content: center;
}

.btn_submit {
    width: 130px;
    height: 50px;
    background: #10C838;
    font-weight: 700;
    font-size: 18px;
    color: #fff;
    border-style: none;
    border-radius: 5%;
}

.chk_area {
    position: relative;
    display: block;
    padding-top: 20px;
}

input[type=checkbox] {
    position: absolute;
    left: 0;
    width: 18px;
    height: 18px;
    margin: 0;
}

.del_msg {
    line-height: 20px;
    text-indent: 28px;
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



    <!-- navi_bar-->
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
    </div> <!-- navi_bar -->




    <div class="content">
        <h2 class="my_title">회원탈퇴</h2>
    

<form id="deleteForm2">

<!-- form 부분-->
    <div class="section">
        <div class="section1">
            <div class="sub_tit">
                <h4>회원탈퇴 안내 및 유의사항</h4>
            </div>

            <div class="amnt_ext">
                <div class="tit_txt">
                    <h6>잔여 금액 소멸</h6>
                </div>
                <ul class="info_list">
                    <li>회원탈퇴 시 보유하고 계신 잔여 금액이 자동 소멸되며 복원되지 않습니다.</li>
                    <li>출금 가능 금액이 있으신 경우 고객센터(1234-5678)로 출금 신청 후 탈퇴해주세요.</li>
                </ul>
            </div>

            <div class="dst_prsn">
                <div class="tit_txt">
                    <h6>개인정보 파기</h6>
                </div>
                <ul class="info_list">
                    <li>개인정보는 회원 재가입 유예기간 경과 후 즉시 파기됩니다.</li>
                    <li>단, 전자상거래법, 통신비밀보호법 등 관련 법령의 규정에 의하여 아래의 개인정보가 일정기간 보관됩니다.</li>
                </ul>
                <div class="law">
                    <table border="0" cellspacing="0">
                        <tr>
                            <td><span class="in">대금결제 및 재화 등의 공급에 관한 기록</span></td>
                            <td><span class="in">5년</span></td>
                        </tr>
                        <tr>
                            <td><span class="in"></span>소비자의 불만 또는 분쟁처리에 관한 기록</span></td>
                            <td><span class="in">3년</span></td>
                        </tr>
                        <tr>
                            <td><span class="in">웹사이트 방문 기록</span></td>
                            <td><span class="in">3개월</span></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div> <!-- section1 -->


        <div class="section2">
            <div class="sub_tit">
                <h5>탈퇴 사유 및 개선점 
                    <span class="option">(선택)</span>
                </h5>
                <div class="opt_box"></div>
                <input type="text" class="comment" placeholder="한걸음에 해주고 싶은 말씀을 자유롭게 입력해주세요. (100자 이내)">
            </div>
        </div>

    </div> <!-- form_box -->

</form>

    <!-- 체크박스/약관동의 -->
    <div class="chk_area">
        <div class="chkbox_area">
            <input type="checkbox" id="chkbox" name="chkbox" value="option">
        </div>
        <div class="del_msg">
            <a>회원탈퇴 유의사항을 모두 확인하였으며, 회원탈퇴에 동의합니다.</a>
        </div>
    </div>



	<!-- 모달창 띄우기
	 
	<div id="modal" class="modal">
	    <div class="pwd_check">
	        <form id="modalForm">
	
	            <p>그동안 한걸음을 이용해주셔서 감사합니다.</p>
	
	            <div class="pwd_input">
	                <input type="password" id="userpassword" name="userpassword" placeholder="비밀번호">
	            </div>
	
	            <div class="repwd_input">
	                <input type="password" id="userpassword2" name="userpassword2" placeholder="비밀번호 재확인">
	            </div>
	
	            <div class="deleteBtn">
	                <input type="button" class="chkBtn" id="chkBtn" name="chkBtn" value="확인">
	            </div>
	        </form>
	    </div>
    </div>
    -->
 
 

    <!-- 탈퇴하기 버튼 -->
    <div class="final_btn_area">
        <button type="button" id="btn_submit" class="btn_submit">회원탈퇴</button>
    </div>   



</div> <!-- form_box -->


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
<script type="text/javascript" src="../js/delete.js"></script>

</body>
</html>