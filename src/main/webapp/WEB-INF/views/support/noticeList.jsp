<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeList.jsp here</title>

<link rel="reset" href="/Hangeulum/css/styleReset.css" />
<link rel="stylesheet" href="/Hangeulum/css/styleNoticeList.css" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />


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
                    <li><a href="/Hangeulum/donation/donation_main">기부</a></li>
                    <li><a href="/Hangeulum/funding/fun_main">펀딩</a></li>
                    <li><a href="/Hangeulum/support/noticeList">고객센터</a></li>
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

<input type="hidden" id="pg" value="${pg }" >
<%--model: pg > js:noticeLsit로 전달--%>

<%--Start Content--%>

<div class="content">
    <div class="contentTitle">
        <div class="contentTitleMain">
            <div><a href="/Hangeulum/support/noticeList">공지사항</a></div>
        </div>

        <div class="contentTitleSub">
            <em>한걸음에서 주요 사항을 공지합니다.</em>
        </div>
    </div>

    <div class="contentSearch"> 
        <div class="contentSearchInner">
            <div class="contentSearchSelectBox">
                <select class="contentSearchSelectBox">
                    <option value="titleAndContent" selected>제목+내용</option>
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                </select>
            </div>
            <div class="contentSearchContent">
                <input class="contentSearchContent" type="text" placeholder="검색어 입력" />
            </div>
            <div class="contentSearchClick">
                <button type="submit" id="contentSearchClickBtn" title="검색">
                    <img src="/Hangeulum/image/enlargement.png" alt="enlargement" class="contentSearchClickImg">
                </button>
            </div>
        </div>
    </div>

    <div class="contentBoard">
        <form>
            <table class="contentBoardTable">
                <tr class="contentBoardTableTitle">
                    <th width="85%">제목</th>
                    <th width="15%">작성일</th>
                </tr>

				<%-- 동적 데이터 --%>
<%--        
                <tr>
                    <td class="contentBoardTableSubject">
                        <span id="contentBoardTableLabel1">중요</span>
                        제목1
                    </td>
                    <td class="contentBoardTableDate">2023-04-21</td>
                </tr>

                <tr>
                    <td class="contentBoardTableSubject">
                        <span id="contentBoardTableLabel2">신규</span>
                        제목2
                    </td>
                    <td class="contentBoardTableDate">2023-04-20</td>
                </tr>

                <tr>
                    <td class="contentBoardTableSubject">제목3</td>
                    <td class="contentBoardTableDate">2023-04-19</td>
                </tr>

--%>

            </table>
        </form>
    </div>


    <div class="contentPaging" >
	<%-- div id 부여: boardList.js에서 데이터 입력 시, paging 위치가 나타나는 곳 --%>

	<%-- 동적 데이터 --%>

<%--
        <button type="button" class="contentPagingBefore">이전</button>
        <button class="contentPagingNumber">1</button>
        <button class="contentPagingNumber">2</button>
        <button class="contentPagingNumber">3</button>
        <button type="button" class="contentPagingAfter">다음</button>
--%>
    </div>

</div>

<%--End Content--%>

<%--Start Footer--%>

<div class="footer">
    <div class="footer_menu">
        <!--<div class="footer_menu_left"></div>-->
        <div class="footer_menu_right">
            <ul>
                <li style="font-weight: 700; color: #202020; padding-right: 25px;">한걸음 안내</li>
                <li><a href="/Hangeulum/support/noticeList">공지사항</a></li>|&nbsp;&nbsp;
                <li><a href="/Hangeulum/support/faqList">자주 묻는 질문</a></li>|&nbsp;&nbsp;
                <li><a href="/Hangeulum/support/consultForm">문의/신고</a></li>|&nbsp;&nbsp;
                <li><a href="/Hangeulum/support/termsUse">이용약관</a></li>|&nbsp;&nbsp;
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

<%--End Footer--%>





<%--For jQuery --%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<%-- For DateFormat --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

<script type="text/javascript" src="/Hangeulum/js/noticeList.js"></script>

<script>
function noticeListPaging(pg) {
	location.href = "/Hangeulum/support/noticeList?pg=" + pg;
}
// userPaging에서 동적으로 들어오는 데이터에서 onclick method name: boardPaging
</script>


</body>
</html>
