$(function(){

 	$.ajax({
  	 type:'post',
  	 url:'/Hangeulum/donation/boardview_list',
  	 data:{'bdseq':$('#bdseq').val()},
  	 
  	 success:function(data){
  	 	console.log(JSON.stringify(data));
  	 	
  	 	
  	 	
  	   $('.header3_img img').attr('src','/Hangeulum/storage/'+data.fileName);
        $('.content_left1').html(data.bdContent);
        $('.title').text(data.bdSubject);
      
  	 	
  	 	
  	 	
  	 
  	 },
  	 
  	 error:function(err){
  	 
  	 	console.log(err);
  	 }
  	 
 
 
 	});





});