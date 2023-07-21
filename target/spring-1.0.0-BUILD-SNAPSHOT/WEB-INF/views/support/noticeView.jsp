<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeView.jsp here</title>

<link rel="stylesheet" href="/Hangeulum/css/styleReset.css" />
<link rel="stylesheet" href="/Hangeulum/css/styleNoticeView.css" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<style>
/*a tag 전역 설정*/
a {text-decoration: none;}

</style>

</head>
<body>





<%--Start Header--%>

<div>
    <div id="header">
        <div class="headerContent">
            <a href="/Hangeulum/"><img src="/Hangeulum/image/logo.png" alt="로고" width="250" height="60"></a>
            <div class="menu">
                <ul>
                    <li><a href="">기부</a></li>
                    <li><a href="">펀딩</a></li>
                    <li><a href="/Hangeulum/support/noticeList" style="color: #00ab33">고객센터</a></li>
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

<%--End Header--%>





<%--For Header Height--%>
<div style="padding-top: 70px;"></div>





<%--Start SubHeader--%>

<div class="headerSub">
    <a href="/Hangeulum/support/noticeList" class="headerSubSpan" style="color: #00ab33; font-weight: 700;">공지사항</a>
    <a href="/Hangeulum/support/faqList" class="headerSubSpan">자주 묻는 질문</a>
    <a href="/Hangeulum/support/consultForm" class="headerSubSpan">문의/신고</a>
    <a href="/Hangeulum/support/termsUse" class="headerSubSpan">약관</a>
</div>

<%--End SubHeader--%>




<input type="hidden" id="noticeSeq" value="${noticeSeq }" >
<%--location.href='/Hangeulum/support/noticeView?seq=' + noticeSeq
value: query param과 동일하게 작성--%>
<input type="hidden" id="userId" value="${sessionScope.userid}" >

<%int pg = Integer.parseInt(request.getParameter("pg")); // 현재 페이지 번호%>
<input type="hidden" id="pg" value="<%= pg %>">



<%--Start Content--%>

<div class="content">
    <div class="contentTitle">
        <div class="contentTitleMain">
            <div><a href="/Hangeulum/support/noticeList" style="text-decoration: none;">공지사항</a></div>
        </div>

        <div class="contentTitleSub">
            <em>한걸음에서 주요 사항을 공지합니다.</em>
        </div>
    </div>

<%--admin login 시 btn 생성 --%>
<div class="updateNoticeDiv">
	<button type="button" class="updateNoticeBtn">글 수정</button>
	<button type="button" class="deleteNoticeBtn">글 삭제</button>
</div>


    <div class="contentViewWrap">
        <div class="contentView">
            <div class="contentViewTitle">
                <strong>
                    <span id="contentBoardTableLabel1">중요</span>
                    <span id="contentViewTitleSpan"></span>
                </strong>
                <div class="contentViewTitleDate">
                    <span id="contentViewTitleDateSpan"></span>
                </div>
            </div>

            <div class="contentViewCont">
                <div class="contentViewContInner">
					<pre style="white-space: pre-line; word-break: break-all;">
						<span id="contentViewContInnerSpan"></span>
					</pre>
                </div>
                <p><br/></p>
            </div>


            <div class="contentViewPage" id="contentViewPagePreDiv">
                <span class="contentViewPage" id="contentViewPagePreSpan">
                    <div class="contentViewPageInner1">
                        <span class="contentViewPageInner11" id="contentViewPageInner11PreSpan">이전</span>
                    </div>
                    <div class="contentViewPageInner2" id="contentViewPageInner2Pre"></div>
                    <div class="contentViewPageInner3" id="contentViewPageInner3Pre"></div>
                </span>
            </div>



            <div class="contentViewPage" id="contentViewPageNextDiv">
                <span class="contentViewPage" id="contentViewPageNextSpan">
                    <div class="contentViewPageInner1">
                        <span class="contentViewPageInner11" id="contentViewPageInner11NextSpan">다음</span>
                    </div>
                    <div class="contentViewPageInner2" id="contentViewPageInner2Next"></div>
                    <div class="contentViewPageInner3" id="contentViewPageInner3Next"></div>
                
                </span>
            </div>

<a href="/Hangeulum/support/noticeList?pg=<%= pg %>" class="contentViewListBtn">목록</a>

        </div>

    </div>

</div>
    
<%--End Content--%>





<%--Start Footer--%>

<div class="footer">
    <div class="footer_menu">
        <!--<div class="footer_menu_left"></div>-->
        <div class="footer_menu_right">
            <ul>
                <li style="font-weight: 700; color: #202020; padding-right: 25px;">한걸음 안내</a></li>
                <li><a href="/Hangeulum/support/noticeList">공지사항</a></li>|&nbsp;&nbsp;
                <li><a href="/Hangeulum/support/faqList">자주 묻는 질문</a></li>|&nbsp;&nbsp;
                <li><a href="/Hangeulum/support/consultForm">문의/신고</a></li>|&nbsp;&nbsp;
                <li><a href="/Hangeulum/support/termsUse">이용약관</a></li>
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
                    <div class="footer_info_copyright"><a href="/Hangeulum/" class="footer_info_naver"><img src="/Hangeulum/image/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
                </ul>
            </div>
        </div>
    </div>
</div>

<%--End Footer--%>





<%--For jQuery --%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<%-- For DateFormat --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

<script type="text/javascript" src="/Hangeulum/js/noticeView.js"></script>
<script>
function goToNotice(noticeSeq) {
	  location.href = '/Hangeulum/support/noticeView?seq=' + noticeSeq;			
}

</script>



</body>
</html>