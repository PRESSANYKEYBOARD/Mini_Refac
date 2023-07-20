
// 약관동의 페이지에서 탈퇴 버튼 누를 경우
$('#btn_submit').click(function(){
	if($('#chkbox').is(":checked") == false ) {
		alert('회원탈퇴 안내 및 유의사항을 확인해주세요');
		}else{
		 window.location.href='/Hangeulum/user/deleterepwd';
		}
});


$('#chkBtn').click(function(){ //비밀번호 재입력 창에서 '확인' 버튼 클릭할 경우
	 
	$('#userpassword').empty();
	$('#userpassword2').empty();
	
	if($('#userpassword').val() == ''){
		$('#pwdDiv').text('비밀번호를 입력해주세요');
		$('#userpassword').focus();
		
	}else if($('#userpassword2').val() == ''){
		$('#pwdDiv2').text('비밀번호를 다시 한번 더 입력해주세요');
		$('#userpassword2').focus();
	
	} else if($('#userpassword').val() != $('#userpassword2').val()){
		alert("비밀번호가 일치하지 않습니다.");
	}
	else{
		$.ajax({
			type:'post',
			url: '/Hangeulum/user/deleteFinal',
			data:$('#deleteForm2').serialize(),
			success:function(){

		alert("회원탈퇴가 완료되었습니다. 그동안 한걸음을 사랑해주셔서 감사합니다.");
		window.location.href='/Hangeulum/';
		
				
			},
			error:function(err){
				console.log(err);
			}
		});
		
		
		
	}



});



