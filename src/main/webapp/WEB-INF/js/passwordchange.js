$('#nextBtn').click(function(){

$('#pwdDiv').empty();
	
	
	if($('#userpassword').val() == ''){
		$('#pwdDiv').text('비밀번호 입력');
		$('#userpassword').focus();
		
	}


	else{
		$.ajax({
			type:'post',
			url:'/Hangeulum/user/changepassword',
			data:$('#pwdchangeForm').serialize(),
			
			
			success:function(){
				alert('변경된 비밀번호로 로그인해주세요.');
				location.href="/Hangeulum/user/loginForm";
			
			},
			
			error:function(err){
				console.log(err);
			}
			
		
		});	
	
	}

});