// Modal show

$('a.consultFormCheckBoxPrivacy').click(function() {
    $('div#consultFormCheckBoxPrivacyModal').show();
});

//팝업 Close 기능
function close_pop(flag) {
    $('#consultFormCheckBoxPrivacyModal').hide();
};





// 카테고리 1차, 2차 선택
$(function(){
	// 1 depth
	$('div#formQcate1').load('../text/category.html select#formQcategory1-1', function(){
	// 일정 영역의 태그를 읽어오는 것이므로 해당 태그 밖의 스타일을 읽어오지 못하므로 직접 입력
		$(this).show();
	}); // For 1 depth
	

	// 2 depth
	// $('#category1 > select').change();
	$(document).on('change', 'div#formQcate1 > select', function(){ // 동적으로 추가된 요소에 대한 이벤트를 정의
		$('div#formQcate2').empty().hide();
		
		var target = $(this).find('option:selected').attr('data-target');
		
		$('div#formQcate2').load('../text/category.html '+target, function(){ 
		// '../text/category-data.html ': 띄어쓰기가 되어있지 않으면 하나의 파일로 인식, target화 하려면 파일명 뒤에 띄어쓰기 필요
			$(this).show();
		}); // For load
	}); // For 2 depth
	
	
	// last select
	$(document).on('change', 'div#formQcate2 > select', function(){
		if($(this).find('option:selected').index() > 0){
			var data1 = $('div#category1 > select > option:selected').val();
			var data2 = $('div#category2 > select > option:selected').val();			
		} // if
	}); // for last select


});





// 이메일 선택에 따른 자동완성
function selectEmail() {
    document.getElementById("formQEmail2").value = document.getElementById("consultFormCategoryEmail").value;
} // select()
    



// 유효성 확인

$('a#consultFormBtnSubmit').click(function() {


	var formQCate1 = $('select#formQcategory1-1 option:selected').text();
	if($('select#formQcategory1-1 option:selected').text()=='문의/신고'){
		alert("항목 선택");
		return false;
	}

	if($('select#formQcategory2-1 option:selected').text()=='문의 세부사항 선택'){
		alert("세부항목 선택");
		return false;
	}

	if($('select#formQcategory2-2 option:selected').text()=='신고 세부사항 선택'){
		alert("세부항목 선택");
		return false;
	}


	var formQCate2;
	if($('select#formQcategory1-1 option:selected').text()=='문의하기'){
		formQCate2 = $('select#formQcategory2-1 option:selected').text();	
	}
	else{
		formQCate2 = $('select#formQcategory2-2 option:selected').text();	
	}
	

	var formQEmail1 = $('input#formQEmail1').val();
	if($('input#formQEmail1').val()==''){
		alert("이메일 입력");
		return false;
	}

	var formQEmail2 = $('input#formQEmail2').val();
	if($('input#formQEmail2').val()==''){
		alert("이메일 입력");
		return false;
	}

	var formQPhone1 = $('input#formQPhone1').val();
	if($('input#formQPhone1').val()==''){
		alert("전화번호 입력");
		return false;
	}

	var formQPhone2 = $('input#formQPhone2').val();
	if($('input#formQPhone2').val()==''){
		alert("전화번호 입력");
		return false;
	}
	
	var formQPhone3 = $('input#formQPhone3').val();
	if($('input#formQPhone3').val()==''){
		alert("전화번호 입력");
		return false;
	}

	var formQContent = $('textarea#formQContent').val();
	if($('textarea#formQContent').val()==''){
		alert("내용 입력");
		return false;
	}
	
	if(!$('input#consultFormCheckBoxYn').is(':checked')){
		alert("개인정보 동의 체크");
		return false;
	}
	
	else{
		$.ajax({
			type: 'post',
			url: '/Hangeulum/support/consult',
			data: {'formQCate1': formQCate1,
				   'formQCate2': formQCate2,
				   'formQEmail1': formQEmail1,
				   'formQEmail2': formQEmail2,
				   'formQPhone1': formQPhone1,
				   'formQPhone2': formQPhone2,
				   'formQPhone3': formQPhone3,
				   'formQContent': formQContent},
			success: function(){
				alert("접수 완료");
				location.href="/Hangeulum/";
			
			},
			error: function(err){
				console.log(err);
			}
						
		});
	}

	return false;
});

