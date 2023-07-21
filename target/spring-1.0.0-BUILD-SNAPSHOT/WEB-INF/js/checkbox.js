$(document).ready(function() {
	 $('.agree_warming').hide(); // 약관 동의 경고 메시지 숨기기

	  // 모두 동의 체크박스
	  var chkAll = $('.agree_all input[type="checkbox"]');
	  // 필수 동의 체크박스
	  var chkNeed = $('.agree_need input[type="checkbox"]');
	  // 선택 동의 체크박스
	  var chkChoice = $('.agree_choice input[type="checkbox"]');
	  
	  // 모든 체크박스가 체크되어 있는지 확인하는 함수
	  function isAllChecked() {
	    var allChecked = true;
	    chkNeed.each(function() {
	      if (!$(this).prop('checked')) {
	        allChecked = false;
	      }
	    });
	    chkChoice.each(function() {
	      if (!$(this).prop('checked')) {
	        allChecked = false;
	      }
	    });
	    return allChecked;
	  }
	  
	  // 모두 동의 체크박스 클릭 시
	  chkAll.click(function() {
	      // 모두 동의 체크박스가 체크되어 있는 경우
	      if ($(this).prop('checked')) {
	          // 필수 동의 체크박스와 선택 동의 체크박스 모두 체크
	          chkNeed.prop('checked', true);
	          chkChoice.prop('checked', true); // 여기서 선택 동의 체크박스도 모두 선택됨
	      } else { // 모두 동의 체크박스가 체크되어 있지 않은 경우
	          // 필수 동의 체크박스와 선택 동의 체크박스 모두 체크 해제
	          chkNeed.prop('checked', false);
	          chkChoice.prop('checked', false);
	      }
	  });
	  
	  // 필수 동의 체크박스 중 하나라도 체크 해제 시 모두 동의 체크박스도 체크 해제
	  chkNeed.click(function() {
	    if (!$(this).prop('checked')) {
	      chkAll.prop('checked', false);
	    } else if (isAllChecked()) { // 필수 동의와 선택 동의 체크박스가 모두 체크된 경우
	        chkAll.prop('checked', true);
	    }
	  });
	  
	 // 선택 동의 체크박스 중 하나라도 체크 시 모두 동의 체크박스도 체크 해제
	  chkChoice.click(function() {
	      if (!$(this).prop('checked')) {
	      chkAll.prop('checked', false); // 선택 동의 체크박스 클릭 시 모두 동의 체크박스도 체크 해제
	      } else if (isAllChecked()) { // 필수 동의와 선택 동의 체크박스가 모두 체크된 경우
	          chkAll.prop('checked', true);
	      }
	  });
	  
	  // 동의함 버튼을 클릭할 때 필수 동의 체크박스를 체크 하지 않은 경우...
		$('.button_agree').on('click', function() {
		  if (chkNeed.not(':checked').length > 0) { // 필수 동의 체크박스 중 체크 안 된 것이 있는지 확인
		    $('.agree_warming').show(); // 약관 경고창 발생
		  } else {
		     $('.agree_warming').hide(); // 약관 동의 경고 메시지 숨기기
		  }
	});
});