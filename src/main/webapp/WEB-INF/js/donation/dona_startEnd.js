$(function() {
	  // 펀딩 개시 시작일과 종료일을 변수에 저장
	  var startDate = new Date($("#post_period_start").val());
	  var endDate = new Date($("#boardFExpireDate").val());

	  // 종료일이 지났으면 "Y" 입력, 아니면 "N" 입력
	  if (endDate < new Date()) {
	    $("#boardFIsExpired").val("Y");
	  } else {
	    $("#boardFIsExpired").val("N    ");
	  }

	  // 종료일이 변경될 때마다 종료여부를 업데이트
	  $("#boardFExpireDate").change(function() {
	    endDate = new Date($(this).val());
	    if (endDate <= new Date()) {
	      $("#boardFIsExpired").val("Y");
	    } else {
	      $("#boardFIsExpired").val("N");
	    }
	  });
});