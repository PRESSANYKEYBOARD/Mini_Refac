// 페이지 로드
$(function(){
		$.ajax({
			type:'post',
			url:'/Hangeulum/user/getUser',
			data: 'userid=' + $('#userid').val(),
			success:function(data){
				console.log(JSON.stringift(data));
			},
			error:function(err){
				console.log(err);
			}
		});
	
});



// 회원정보수정 완료
$('#btn_update').click(function(){ //회원정보수정 버튼 클릭하면

	$('#nameDiv').empty();
	$('#pwdDiv').empty();
	$('#phoneDiv').empty();
	$('#emailDiv').empty();

	if($('#username').val() == ''){
		$('#nameDiv').text('이름을 입력해주세요');
		$('#username').focus();
		
	}else if($('#userpassword').val() == ''){
		$('#pwdDiv').text('비밀번호를 입력해주세요');
		$('#userpassword').focus();
		
	}else if($('#userpassword2').val() == ''){
		$('#pwdDiv2').text('비밀번호를 다시 한 번 더 입력해주세요');
		$('#userpassword2').focus();


//비밀번호 일치 여부 확인 코드 
	}else if($('#userpassword').val() != $('#userpassword2').val()){
		$('#pwdDiv2').text('비밀번호가 일치하지 않습니다.');
		$('#userpassword2').focus();
		
	}else if($('#userphone').val() == ''){
		$('#phoneDiv').text('전화번호를 입력해주세요');
		$('#userphone').focus();
	
	}else if($('#email').val() == ''){
		$('#emailDiv').text('이메일을 입력해주세요');
		$('#useremail').focus();
	
	}else{
		$.ajax({
			type:'post',
			url:'/Hangeulum/user/update',
			data:$('#UpdateForm').serialize(),
			success:function(){
				alert('회원 정보 수정이 완료되었습니다.');
				location.href='/Hangeulum/user/mypageIndex';
			},
			error:function(err){
				console.log(err);
			}
		});
	}
});









