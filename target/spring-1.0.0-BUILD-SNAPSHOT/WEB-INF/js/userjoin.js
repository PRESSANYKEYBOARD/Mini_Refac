$('#joinBtn').click(function(){
	$.ajax({
		type:'post',
		url:'/Hangeulum/user/join',
		data:$('#joinForm').serialize(),
		success:function(){
			alert('회원가입을 축하합니다.');
			location.href='/Hangeulum/user/loginForm';		
		},
		
		error: function(err){
			consolo.log(err);
		}
		
		});

});