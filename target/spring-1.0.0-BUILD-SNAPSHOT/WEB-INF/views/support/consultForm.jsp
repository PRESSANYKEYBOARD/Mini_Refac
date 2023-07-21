<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ConsultForm.jsp here</title>

<!-- href default:  -->
<link rel="stylesheet" href="/Hangeulum/css/styleReset.css" />
<link rel="stylesheet" href="/Hangeulum/css/styleConsultForm.css" />

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
                    <li><a href="/Hangeulum/donation/donation_main">기부</a></li>
                    <li><a href="/Hangeulum/funding/fun_main">펀딩</a></li>
                    <li><a href="/Hangeulum/support/noticeList">고객센터</a></li>
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
    <a href="/Hangeulum/support/noticeList" class="headerSubSpan">공지사항</a>
    <a href="/Hangeulum/support/faqList" class="headerSubSpan">자주 묻는 질문</a>
    <a href="/Hangeulum/support/consultForm" class="headerSubSpan" style="color: #00ab33; font-weight: 700;">문의/신고</a>
    <a href="/Hangeulum/support/termsUse" class="headerSubSpan">약관</a>
</div>

<%--End SubHeader--%>




<%--Start Content--%>

<div class="content">
    <div class="contentTitle">
        <div class="contentTitleMain">
            <div><a href="/Hangeulum/support/consultForm">문의/신고</a></div>
        </div>

        <div class="contentTitleSub">
            <em>남겨주신 내용을 확인 후 담당팀에서 연락을 드려 자세한 상담을 도와드리겠습니다.</em>
        </div>
    </div>

    <div class="contentFormQ">
        <form name="consultForm" id="consultForm">
            <table id="contentFormQTable">
                <colgroup>
                    <col width="20%">
                    <col width="*">
                </colgroup>

                <tbody>
                    <tr>
                        <th>항목 선택 *</th>
                        <td>
                            <div id="consultFormSelectBox1">
                                <div id="formQcate1"
                                  title="항목 선택"
                                message="항목을 선택해 주세요."><!--msg: 의미 X-->
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <th style="height: 88px;">세부항목 선택 *</th>
                        <td>
                            <div id="consultFormSelectBox2">
                                <div id="formQcate2"
                                  title="세부항목 선택"
                                message="세부항목을 선택해 주세요.">
                                <!--항목 선택 후, 세부항목 선택이 가능합니다.-->
                                </div>
                            </div>
                        </td>
                    </tr>


                    <tr>
                        <th>이메일 *</th>
                        <td>
                            <div class="consultFormEmail">
                                <input type="text" name="formQEmail1" id="formQEmail1" title="이메일" message="이메일 주소를 입력해 주세요.">
                                <i style="padding-top: 6px;">&nbsp;@&nbsp;</i>
                                <input type="text" name="formQEmail2" id="formQEmail2" title="이메일도메인" message="이메일 도메인 주소를 입력해 주세요.">

                                <div class="consultFormSelectBoxEmail">
                                    <select name="consultFormCategoryEmail"
                                              id="consultFormCategoryEmail"
                                           title="이메일 도메인"
                                         message="이메일 도메인을 선택해 주세요."
                                        onChange="javascript:selectEmail()">
                                        <option value="" selected>직접 입력</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="daum.net">daum.net</option>
                                        <option value="gamil.com">gmail.com</option>
                                        <option value="kakao.com">kakao.com</option>
                                    </select>
                                </div>
                            
                            </div>

                        </td>
                    </tr>

                    <tr>
                        <th>연락처 *</th>
                        <td>
                            <div class="consultFormPhone">
                                <input type="text" name="formQPhone1" id="formQPhone1" title="1번째 전화번호" message="1번째 전화번호를 입력해 주세요.">
                                <i style="padding: 6px 20px 0 0;">-</i>
                                <input type="text" name="formQPhone2" id="formQPhone2" title="2번째 전화번호" message="2번째 전화번호를 입력해 주세요.">
                                <i style="padding: 6px 20px 0 0;">-</i>
                                <input type="text" name="formQPhone3" id="formQPhone3" title="3번째 전화번호" message="3번째 전화번호를 입력해 주세요.">
                            
                            </div>

                        </td>
                    </tr>

                    <tr>
                        <th>문의내용 *</th>
                        <td>
                            <div class="consultFormContent">
                                <textarea name="formQContent" id="formQContent"
                                         title="문의내용" message="문의내용을 입력해주세요."
                                         placeholder="남겨주신 내용을 확인한 후 담당자가 2~3일 내로 연락 드리겠습니다."></textarea>
                                <!--textarea 공백 유의-->
                            </div>

                        </td>
                    </tr>

                    <tr>
                        <th>개인정보 처리 방침 *</th>
                        <td>
                            <div class="consultFormCheckBox">
                                <div class="consultFormCheckBoxMain">
                                    <input type="checkbox" name="consultFormCheckBoxYn" id="consultFormCheckBoxYn" title="개인정보 처리방침" message="개인정보 처리방침을 선택해 주세요.">
                                    <label for="consultFormCheckBoxYn">동의</label>
                                </div>
                                <a href="javascript:void(0);" class="consultFormCheckBoxPrivacy">내용보기</a>
                                <!--
                                    href="javascript:void(0);": 
                                    링크를 클릭해도 어떤 페이지로도 이동하지 않음
                                    아무것도 하지 않는 JavaScript 코드(void(0)) 실행
                                    링크가 새 페이지로 이동하는 것이 아닌 JavaScript 함수나 이벤트를 트리거하는 용도로 사용
                                -->
                            </div>
                        </td>
                    </tr>

                </tbody>
            </table>
        </form>

        <div class="consultFormBtnWrap">
            <a href="javascript:void(0);" onclick="history.back(-1);" class="consultFormBtn" id="consultFormBtnCancel">취소하기</a>
            <a href="javascript:void(0);" class="consultFormBtn" id="consultFormBtnSubmit">접수하기</a>
        </div>

    </div>

</div>


<%--End Content--%>





<%--Start Modal--%>

<div class="consultFormCheckBoxPrivacyModal" id="consultFormCheckBoxPrivacyModal">

    <!-- Modal content -->
    <div class="consultFormCheckBoxPrivacyContent">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 16pt;">온라인문의 개인정보 수집 및 이용 안내</span></b></span></p>
                <p style="text-align: left; line-height: 1.5; color:#4D4D4D; font-size: 10pt;">
                   <br /> - 귀하는 온라인 문의를 위한 최소한의 개인정보 수집 및 이용에 동의하지 않을 권리가 있으며, 동의 거부 시 문의하신 내용에 대한 안내가 제한될 수 있습니다.
                   <br /> - 개인정보는 제공자가 동의한 내용 외의 다른 목적으로 활용되지 않으며, 문의내용 답변을 위해 이용됩니다.</p>
                <p><br /></p>
            <div id="consultFormCheckBoxPrivacyContentExit" onClick="close_pop();">
                <span style="font-size: 13pt;" >
                    닫기
                </span>
            </div>
    </div>

</div>

<%--End Modal--%>
  




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
                    <br/>
                    <small class="footer_info_notice">(재)한걸음은 프로젝트의 당사자가 아니므로, 프로젝트 진행 및 거래 등에 대한 책임은 해당 프로젝트의 개설자에게 있습니다.</small>
                    <div class="footer_info_copyright"><a href="/Hangeulum/" class="footer_info_naver"><img src="/Hangeulum/image/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
                </ul>
            </div>
        </div>
    </div>
</div>

<%--End Footer--%>




<%--For jQuery --%>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>

<script src="/Hangeulum/js/consultForm.js"></script>


</body>
</html>