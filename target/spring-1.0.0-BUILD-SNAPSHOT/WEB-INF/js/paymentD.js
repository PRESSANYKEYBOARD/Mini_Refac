// input box , 입력
const input = document.querySelector('input#contentMainContPaymentAmtInput');

input.addEventListener('keyup', function(e){
    let value = e.target.value;
    value = Number(value.replaceAll(',', ''));
    // Number: toLocaleString 입력값이 number여야하므로 text -> number로 형변환
    // replaceAll: ,가 발생 후 number로 변환하기위한 과정
    // replaceAll 처리시, number가 아닌 값을 , 처리하여 NaN 발생
    const formatValue = value.toLocaleString('ko-KR'); // 셋째자리에 콤마 추가
    input.value = formatValue;
})

// 버튼 클릭 시, 값 자동 입력
$('button.contentMainContPaymentAmtSortBtn').click(function(e){
    e.preventDefault();
    var amount = $(this).data('amount');
    $('input#contentMainContPaymentAmtInput').val(amount);
});


// donation Load
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/Hangeulum/donation/paymentD',
		// 임시 처리, 이후 게시글에서 seq 보내주기
		data: {'bdSeq': $('#bdSeq').val()},
			   // {'seq': $('#seq').val(),
			   //   'pg': $('#pg').val()},
		dataType: 'json',
		success: function(data){
			console.log(JSON.stringify(data));
		
			$('span.contentTitleMainSpan').text(data.bdSubject);
			$('span.contentTitleSubSpan').html("by&nbsp;&nbsp;" + data.bdDonaGroup);
								
		},
		error: function(err){
			console.log(err);
		}
	});
});


// donation DB update
$('a.contentMainContPaymentRegularBtnY').click(function(){
var totalPayment = document.getElementById("contentMainContPaymentAmtInput").value;
totalPayment = Number(totalPayment.replaceAll(',', ''));
	$.ajax({
		type: 'post',
		url: '/Hangeulum/donation/paymentDUpdate',
		data: {'userId': $('input#userId').val(),
				'bdSeq': $('input#bdSeq').val(),
	    		 //input type hidden으로 나중에 바꾸기
    // 'donationActive': totalPayment,
// 'bdCumulativeAmount': totalPayment},
   'totalPayment': totalPayment},
		success: function(){
			alert("소중한 관심에 감사드립니다.");
				location.href="/Hangeulum/";
		},
		
		error: function(err){
			console.log(err);
		}
		
	});
});
