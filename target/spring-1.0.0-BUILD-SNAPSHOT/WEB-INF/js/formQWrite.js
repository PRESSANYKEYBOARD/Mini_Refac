$('#writeBtn').click(function(){
	$.ajax({
		type:'post',
		url:'/Hangeulum/donation/formQwrite',
		data:$('#formQ').serialize(),
		success:function(){
			alert('글 작성이 완료 되었습니다.');
			location.href='/Hangeulum/donation/formQ';		
		},
		
		error: function(err){
			console.log(err);
		}
		
		});

});