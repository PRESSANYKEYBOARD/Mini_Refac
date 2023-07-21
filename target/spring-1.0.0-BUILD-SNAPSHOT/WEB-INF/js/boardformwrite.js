$('#writeBtn').click(function(){
	$.ajax({
		type:'post',
		url:'/Hangeulum/donation/write',
		data:$('#donationForm').serialize(),
		success:function(){
			alert('글 작성이 완료 되었습니다.');
			location.href='/Hangeulum/donation/writeForm';		
		},
		
		error: function(err){
			console.log(err);
		}
		
		});

});