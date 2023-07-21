// Modal show
$(function(){
    $('div.contentNoticeDelayModal').hide();
    $('div.contentSellerInfoModal').hide();
    $('div.contentUseAgreeModal').hide();

});

$('div.contentNoticeDelay').click(function() {
    $('div#contentNoticeDelayModal').show();
});
$('.contentSellerInfo').click(function() {
    $('div#contentSellerInfoModal').show();
});
$('div.contentAgreeCheckBoxA').click(function() {
    $('div#contentUseAgreeModal').show();
});
$('div.contentAgreeInfoSafety').click(function() {
    $('div#contentUseAgreeModal').show();
});



$('div.contentProductClick').click(function(){
    $('div.contentProductForToggle').toggle();
});

$('div.contentUserInfoClick').click(function(){
    $('div.contentUserInfoForToggle').toggle();
});

$('div.contentPaymentLastClick').click(function(){
    $('div.contentPaymentLastToggle').toggle();
});



// 데이터 불러오기

$(document).ready(function() {
	$.ajax({
		type: 'post',
		url: '/Hangeulum/funding/paymentF',
		// 임시 처리, 이후 게시글에서 seq 보내주기
		data: {'boardFSeq': $('#boardFSeq').val()},
		dataType: 'json',
		success: function(data){
			console.log(JSON.stringify(data));
			
			// 숫자를 날짜로 변환
			var date = new Date(data.boardFSendDate);
			  
			// 원하는 날짜 형식으로 포맷팅
			var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
			var contentEstimatedDateFormatted = date.toLocaleDateString('ko-KR', options);
  			  
			$('span.contentEstimatedDateDSpan').text(contentEstimatedDateFormatted);
			
			// 오늘 날짜 가져오기
  			var today = new Date();
  			
			// 원하는 날짜 형식으로 포맷팅
  			var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
			var formattedDateTodayFormatted = today.toLocaleDateString('ko-KR', options);
			
			// 특정 요소에 오늘 날짜 추가
  			$('span.contentEstimatedDatePR1').text(formattedDateTodayFormatted);
			
						
			// UserId
			$('span.contentSellerSpan').text(data.userId);
			$('span.contentAgreeInfoInnerSpan').text(data.userId);
			
			// UserEmail
			$('sapn.contentSellerInfoContentModalInnerSpan').text(data.userEmail);
			
			// 판매제품
			$('div.contentProductDetailMainR1').text(data.boardFSubject);
			
			
			// 리워드 옵션
			$('span.contentProductDetailMainR1RewardProdSpan').text(data.boardFRewardSelect);
			
			// 리워드 가격
			$('span.contentProductDetailMainR1RewardPriceSpan').text(data.boardFRewardPrice);
			
			// 총 가격(or 가격)
			$('span.contentProductDetailTotalAmount').text(data.boardFRewardPrice);
			$('span.contentTotalAmount').text(data.boardFRewardPrice);



	$.ajax({
		type: 'post',
		url: '/Hangeulum/funding/paymentFGetEmail',
		data: {'boardFSeq': $('#boardFSeq').val()},
		dtatType: 'json',
		success: function(data){
			console.log(JSON.stringify(data));
			$('span.contentSellerInfoContentModalInnerSpan').text(data.useremail);
		},
		error: function(err){
			console.log(err);
		}		
		
	}); // find UserEmail



			


	$.ajax({
		type: 'post',
		url: '/Hangeulum/funding/paymentFUserInfo',
		// 임시 처리, 이후 게시글에서 seq 보내주기
		data: {'userId': $('#userId').val()},
		dataType: 'json',
		success: function(data){
			console.log(JSON.stringify(data));
			$('div.contentUserInfoGetName').text(data.username);
			$('div.contentUserInfoGetPhone').text(data.userphone);
			$('div.contentUserInfoGetEmail').text(data.useremail);
			
		},
		error: function(err){
			console.log(err);
		}		
		
	}); // ajax for userInfo

		},
		error: function(err){
			console.log(err);
		}		
		
	}); // ajax for SellerInfo

});







// 유효성 검사
$('div.contentFundingPaySubmitBtn').click(function() {

var totalPayment = $('#totalPayment').val();


	if(!$('input.contentAgreeCheckBox').is(':checked')){
		alert("펀딩결제 이용안내 동의 체크");
		return false;
	}
	
	
	else{
		$.ajax({
			type: 'post',
			url: '/Hangeulum/funding/paymentFUpdate',
			data: {'userId': $('input#userId').val(),
				'boardFSeq': $('input#boardFSeq').val(),
		    	   //input type hidden으로 나중에 바꾸기
 			 'totalPayment': totalPayment},
			success: function(){
				alert("결제 완료");
				
				// 펀딩 메인 이동
				location.href="/Hangeulum/";
			
			},
			error: function(err){
				console.log(err);
			}
						
		});
	}


});
