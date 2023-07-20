<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faqList.jsp here</title>
<link rel="stylesheet" href="/Hangeulum/css/styleReset.css" />
<%--
    ref: 필수 속성으로, 현재 문서와 외부 리소스 사이의 연관 관계를 명시
    정해진 rel이 있으므로 확인 후 적용
--%>
<link rel="stylesheet" href="/Hangeulum/css/styleFaqList.css"/>

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
    <a class="headerSubSpan">공지사항</a>
    <a class="headerSubSpan" style="color: #00ab33; font-weight: 700;">자주 묻는 질문</a>
    <a class="headerSubSpan">문의/신고</a>
    <a class="headerSubSpan">약관</a>
</div>

<%--End SubHeader--%>





<!--Start Content-->

<div class="content">
    <div class="contentTitle">
        <div class="contentTitleMain">
            <div>자주 묻는 질문</div>
        </div>

        <div class="contentTitleSub">
            <em>한걸음에서 자주 궁금해하시는 질문을 모았습니다.</em>
        </div>
    </div>

	<c:if test="${ empty display }">

    <div class="contentCont">
        <div class="contentContMenu">
            <ul class="contentConMenuItems">
                <li class="contentConMenuItems" id="contentConMenuItem0" onclick="location.href='/Hangeulum/support/faqList'" style="color: #00ab33; font-weight: 600;">기부</li>
                <li class="contentConMenuItems" id="contentConMenuItem1" onclick="location.href='/Hangeulum/support/faqList2'">펀딩</li>
            </ul>
        </div>
    </div>


    <div class="contentFaqList">
        <ul class="contentFaqSubject">
            <li>
                <span class="contentFaqSubjectQ">Q</span>
                <span>[기부] 한걸음 기부 소개</span>
                <span class="contentFaqSubjectToggleBtn">
                    <input type="button" class="contentFaqSubjectToggleBtnInner" value="▼">
                </span>
            </li>
            <div class="contentFaqContent">
                <p>
                    공익 사업에 대해 네티즌의 기부를 받기 위해 개설하는 페이지입니다.
                    <br/>
                    <br/>한걸음의 기부 메뉴에서 기부 테마에 따라 다양한 사연으로 개설된 모금함을 확인할 수 있습니다.
                    <br/>
                    <br/><a href="#">모금함 기부 바로가기</a>
                    <br/>
                </p>
                <div class="faqListFeedBackWrap">
                    <div class="faqListFeedBack">
                        <span>도움말이 도움이 되셨나요?</span>
                        <ul class="faqListFeedBtnWrap">
                            <li>
                                <button type="button" id="faqListFeedBtnY0">예</button>
                            </li>
                            <li>
                                <button type="button" id="faqListFeedBtnN0">아니오</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>



            <li>
                <span class="contentFaqSubjectQ">Q</span>
                <span>[기부] 진행중인 모금함 찾는 방법</span>
                <span class="contentFaqSubjectToggleBtn">
                    <input type="button" class="contentFaqSubjectToggleBtnInner" value="▼">
                </span>
            </li>            
            <div class="contentFaqContent">
                <p>
                    1. 내가 관심 있는 주제와 관련된 모금함 찾기
                    <br/>
                    <br/>한걸음에서 기부 메뉴를 선택하여 상단 각 테마에 맞는 모금함을 확인할 수 있습니다.
                    <br/>모금함을 선택 후 사연을 자세히 확인하고 기부하세요.
                    <br/>
                    <br/>2. 내가 원하는 모금함 직접 찾기
                    <br/>
                    <br/>한걸음 사이트의 우측 상단에 제공되는 검색창에 찾으려는 모금함 제목 또는 단체명을 입력하세요.
                    <br/>검색 결과로 노출되는 콘텐츠 중 모금함 탭을 선택하면 검색어와 관련된 모금함을 찾을 수 있습니다.
                    <br/>
                </p>
                <div class="faqListFeedBackWrap">
                    <div class="faqListFeedBack">
                        <span>도움말이 도움이 되셨나요?</span>
                        <ul class="faqListFeedBtnWrap">
                            <li>
                                <button type="button" id="faqListFeedBtnY1">예</button>
                            </li>
                            <li>
                                <button type="button" id="faqListFeedBtnN1">아니오</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>



            <li>
                <span class="contentFaqSubjectQ">Q</span>
                <span>[기부] 한걸음 기부방법</span>
                <span class="contentFaqSubjectToggleBtn">
                    <input type="button" class="contentFaqSubjectToggleBtnInner" value="▼">
                </span>
            </li>
            <div class="contentFaqContent">
                <p>
                    한걸음 > 기부 페이지에서 모금함을 선택한 후 기부할 수 있습니다.
                    <br/>
                    <br/><a href="#">기부 페이지 바로가기</a>
                    <br/>
                    <br/>1. 모금함 선택하기
                    <br/>
                    <br/>모금함 기부 페이지 진행중 모금함에서 원하는 모금함을 선택하세요.
                    <br/>
                    <br/>
                    <br/>2. 기부하기
                    <br/>
                    <br/>선택한 모금함 페이지로 이동한 후 모금함 기부하기 버튼을 클릭하여 기부할 수 있습니다.
                    <br/>
                </p>
                <div class="faqListFeedBackWrap">
                    <div class="faqListFeedBack">
                        <span>도움말이 도움이 되셨나요?</span>
                        <ul class="faqListFeedBtnWrap">
                            <li>
                                <button type="button" id="faqListFeedBtnY2">예</button>
                            </li>
                            <li>
                                <button type="button" id="faqListFeedBtnN2">아니오</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>



            <li>
                <span class="contentFaqSubjectQ">Q</span>
                <span>[기부] 내 기부내역 확인 방법</span>
                <span class="contentFaqSubjectToggleBtn">
                    <input type="button" class="contentFaqSubjectToggleBtnInner" value="▼">
                </span>
            </li>
            <div class="contentFaqContent">
                <p>
                    마이페이지에서 기부했던 내용을 한 눈에 확인할 수 있습니다.
                    <br/>
                    <br/>최근 기부한 내역은 우측 상단 닉네임 > 활동 내역 > 기부 내역에서 확인이 가능합니다.
                    <br/>
                    <br/><a href="#">기부 내역 바로가기</a>
                    <br/>
                </p>
                <div class="faqListFeedBackWrap">
                    <div class="faqListFeedBack">
                        <span>도움말이 도움이 되셨나요?</span>
                        <ul class="faqListFeedBtnWrap">
                            <li>
                                <button type="button" id="faqListFeedBtnY3">예</button>
                            </li>
                            <li>
                                <button type="button" id="faqListFeedBtnN3">아니오</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>



            <li>
                <span class="contentFaqSubjectQ">Q</span>
                <span>[기부] 기부 취소 및 환불</span>
                <span class="contentFaqSubjectToggleBtn">
                    <input type="button" class="contentFaqSubjectToggleBtnInner" value="▼">
                </span>
            </li>
            <div class="contentFaqContent">
                <p>
                    기부 취소 및 환불 안내
                    <br/>
                    <br/>기부 건은 7일 이내 (결제일 포함)에 취소와 환불이 가능합니다.
                    <br/>
                    <br/>단, 연도가 바뀌는 매년 12월 결제 취소는 당월 내에만 가능하며, 기부 건이 7일 이내라도 환불을 희망하는 연도가 달라질 경우 처리 불가합니다.
                    <br/>
                </p>
                <div class="faqListFeedBackWrap">
                    <div class="faqListFeedBack">
                        <span>도움말이 도움이 되셨나요?</span>
                        <ul class="faqListFeedBtnWrap">
                            <li>
                                <button type="button" id="faqListFeedBtnY4">예</button>
                            </li>
                            <li>
                                <button type="button" id="faqListFeedBtnN4">아니오</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </ul>
        </div>
	</c:if>
	<c:if test="${ not empty display }">
		<jsp:include page="${display }" />
	</c:if>
    </div>

<!--End Content-->





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
                <li><a href="">이용약관</a></li>
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
                    <br/>
                    <small class="footer_info_notice">(재)한걸음은 프로젝트의 당사자가 아니므로, 프로젝트 진행 및 거래 등에 대한 책임은 해당 프로젝트의 개설자에게 있습니다.</small>
                    <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="/Hangeulum/image/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
                </ul>
            </div>
        </div>
    </div>
</div>

<%--End Footer--%>





<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="/Hangeulum/js/faqList.js"></script>



</body>
</html>