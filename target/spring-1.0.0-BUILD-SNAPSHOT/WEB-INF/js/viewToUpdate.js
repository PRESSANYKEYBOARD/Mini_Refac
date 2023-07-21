  $('#modifyBtn').click(function(){
     alert("dd");
     var bdSeq = $('#bdSeq').val();         
     location.href='/Hangeulum/donation/donationUpdate?bdSeq='+bdSeq;
  });












$('#delBtn').click(function(){
   var bdSeq = $('#bdSeq').val();


   confirmRequest = confirm('해당 글을 정말 삭제하시겠습니까?')
   if(confirmRequest==true){

   $.ajax({
      type: 'post',
      url: '/Hangeulum/donation/donationDelete',
      data: {'bdSeq':$('#bdSeq').val()},
      success: function(){
         alert('해당 글을 삭제하였습니다.');
         location.href="/Hangeulum/donation/donation_main";
      },
      error: function(err){
         console.log(err);
      }   
   });
   } else {
      
   }
   
});
   



