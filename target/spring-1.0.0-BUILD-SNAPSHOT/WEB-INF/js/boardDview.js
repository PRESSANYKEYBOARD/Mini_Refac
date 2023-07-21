$(function(){

$('.modifyAndDelBtnDiv').hide();

	if($('#userid').val()=='admin'){
		$('.modifyAndDelBtnDiv').show();
	}
	
	else{
		$('.modifyAndDelBtnDiv').hide();
	}

 	$.ajax({
  	 type:'post',
  	 url:'/Hangeulum/donation/boardview_list',
  	 data:{'bdseq':$('#bdSeq').val()},
  	 
  	 success:function(data){
  	 
  	 	console.log(JSON.stringify(data));
  	 	console.log(data);
  	 	
  	   $('.header3_img img').attr('src','/Hangeulum/storage/'+data.fileName);
        $('.content_left1').html(data.bdContent);
        $('.title').text(data.bdSubject);
        $('.much').text(data.bdCumulativeAmount);
        $('.credit').text(data.bdCumulativeAmount);

  	 
  	 },
  	 
  	 error:function(err){
  	 
  	 	console.log(err);
  	 }
  	 
 
 
 	});





});