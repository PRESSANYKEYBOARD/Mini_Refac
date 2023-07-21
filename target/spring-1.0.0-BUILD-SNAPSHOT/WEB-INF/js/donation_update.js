$(function(){
	$.ajax({
		type:'post',
      	url: '/Hangeulum/donation/donationUpdateLoad',
      	data: 'bdSeq=' + $('#bdSeq').val(),
      		success:function(data){
			console.log(JSON.stringify(data));
			console.log(data.fileName);
			
			$('#bdSubject').val(data.bdSubject);
			$('#bdGoalAmount').val(data.bdGoalAmount);
			$('#post_period_start').val(data.bdStartDate);
			$('#bdExpireDate').val(data.bdExpireDate);
			$('#bdTagName').val(data.bdTagName);
			$('#bdDonaGroup').val(data.bdDonaGroup);
			$('#category').val(data.categorydona);	
			
			$('#bdContent').val(data.bdContent);
			$('#ThumbImg2').attr('src', '/Hangeulum/storage/' + data.fileName);
			
			$('.select_img').html();
			
			//location.href='/Hangeulum/donation/writeForm';		
		},
		
		error: function(err){
			console.log(err);
		}
		
		});

});


$('#resetBtn').click(function() {
	location.reload(); // 현재 페이지 다시 로드
});


/*

$('#modifyBtn').click(function() {
var bdSeq = $('#bdSeq').val();

	$.ajax({
		type:'post',
		url:'/Hangeulum/donation/UpdateDonation',
		data:$('#donationUpdateForm').serialize(),
		success:function(){
			alert('글 수정 되었습니다.');
			location.href='/Hangeulum/donation/donation_view?bdseq='+bdSeq;
		},
		
		error: function(err){
			console.log(err);
		}
		
		});


});


*/