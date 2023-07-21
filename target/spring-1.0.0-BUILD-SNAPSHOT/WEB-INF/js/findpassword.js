$('#mail-check-Btn').click(function(){
alert('hi');

const checkInput=$('.useremail');
const email =$('#useremail').val();
$.ajax({

	type:'get',
	url:'/Hangeulum/user/mailCheck?email='+email,
	
	success:function(data){
		console.log("data:"+data);
		code=data;
		alert('인증번호가 전송되었습니다.');
	}
});

});

$('#nextBtn').click(function(){

	$('#nameDiv').empty();
	$('#emailDiv').empty();
	
	
	if($('#username').val() == ''){
		$('#nameDiv').text('이름 입력');
		$('#username').focus();
		
	}else if($('#useremail').val() == ''){
		$('#emailDiv').text('이메일 입력');
		$('#useremail').focus();
}else if($('#email_number').val()==''){
		$('#numberDiv').text('인증번호 입력');
		$('#email_number').focus();
	

}else if($('#email_number').val()===code){


$.ajax({
		type:'post',
		data:{"useremail":$('#useremail').val(),"username":$('#username').val()},
		url:'/Hangeulum/user/findpasswordcomplete',
	
		success:function(data){
			alert(data);
			var userid = data;
			
			if(userid ===''){
				alert('고객님과 일치하는 정보가 존재하지 않습니다.');
				location.href='/Hangeulum/user/findpasswordForm';
			}
			
			else{
			location.href='/Hangeulum/user/findpasswordcompleteForm?userid='+userid;
			}
			
		
		
		/*	
			
			$.ajax({
				type:'post',
				data:userid,
				url:'/Hangeulum/user/findIdCompleteForm',
				
				
				});
			
		*/
			
		},
		
		error:function(err){
			console.log(err);
		},
	
	});

}

else{
	$('#mail-check-warn').html('인증번호가 불일치합니다.');

}	
	
});
	

