<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<link rel="reset" href="/Hangeulum/css/styleReset.css" />
<link rel="stylesheet" href="/Hangeulum/css/funding/fun_payment.css">
<meta charset="UTF-8">
<style>
	/*a tag 전역 설정*/
	a {text-decoration: none !important;}
</style>
<title>펀딩 결제 페이지</title>
</head>
<body>
<div>
    <div id="header">
        <div class="headerContent">
            <a href="/Hangeulum/"><img src="/Hangeulum/image/logo.png" alt="로고" width="250" height="60"></a>
            <div class="menu">
                <ul>
                    <li>펀딩 결제 신청하기</li>
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
	</div> <!-- header1 끝 -->
	
	<%--End Header--%>

	<%--For Header Height--%>
	<div style="padding-top: 70px;"></div>
	
	<%--Start SubHeader--%>
	
	<div class="form">
		<form id="fun_paymentForm" name="fun_paymentForm">
		
			<input type="text" name="userId" id="userId" value="hong">
			
			<div class="top_section">
				<div class="title_area1">
					<strong class="notice">
						" 신청하신 상품 발송예정일은 "
						<br />
						" ${fundingDTO.boardFSendDate} 입니다."
						<button type="button">
						</button>
					</strong>	
				</div>
				<div class="title_area2">
					<dl class="item_group">
						<dt>결제일</dt>
						<dd>
							<strong>${fundingDTO.boardFSendDate}</strong>
							<ul>
								<li>결제실패 시 다음날 오전에 1회 재결제 시도</li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
		
		</form>
	</div>
	
</div>
</body>
</html>