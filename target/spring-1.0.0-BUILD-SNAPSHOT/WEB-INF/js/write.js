$('#writeBtn').click(function(){

    $.ajax({
        type:'post',
        url:'hangeulum/funding/fun_write',
        data:$('#boardFform').serialize(),

        success:function(){
			alert('회원가입을 축하합니다.');
			location.href='/Hangeulum/user/joinForm';
		
		},
		
		error: function(err){
			consolo.log(err);
		}
		

    });

});