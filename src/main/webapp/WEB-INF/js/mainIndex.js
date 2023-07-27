$(function(){

   $.ajax({
      type:'post',
      url:'/Hangeulum/user/activemain',
      

       success:function(data){
          
          console.log(JSON.stringify(data));
     
          console.log(data.fundingactive);
          console.log(data.donationactive);
          console.log(data.donationcount);
          console.log(data.fundingcount);
       
       $('.donation-status-point > span').text(data.donationcount);
       $('.donation-status-money > span').text(data.donationactive);
       $('.funding-status-point > span').text(data.fundingcount);
       $('.funding-status-money > span').text(data.fundingactive);
    
   
       },
       
       error:function(err){
          console.log(err);
       }
   
   });
   
   
   $.ajax({
      type:'post',
      url:'/Hangeulum/user/profilelist',
      data:'userid='+$('#kakao_email').val(),
      
      success:function(data){
         console.log(data);
         
         $('.profile_img').attr('src','/Hangeulum/storage/' + data);
      },
      
      error:function(err){
         console.log(err);
      }
      

   });
   
   
   $.ajax({
      type:'post',
      url:'/Hangeulum/user/card_list',
      
      success:function(data){
         
         
       
         
      $.each(data, function(index, items){
          console.log(items.bdSeq);
     
     
         html =
  "<div class='col-md-4 col-sm-6'>" +
  "<div class='card' style='width: 18rem;'>" +
  "<img src='/Hangeulum/storage/" + items.fileName + "'  width='287px' height='200px'> " +
  "<div class='card-body'>" +
  "<a href='/Hangeulum/donation/donation_view?bdseq=" + items.bdSeq + "'><h5 class='card-title'>" + items.bdSubject + "</h5></a>" +
  "<span class='card-text'>" + items.bdContent + "</span>" +

  "<div class='progress' aria-label='모금률'>" +
  "<span class='progress_bar' style='width: 80%;'></span>" +
  "</div>" +

  "<strong class='donation_percent'>" +
  "80%" +
  "</strong>" +
  "<strong class='donationcard_text'>" +
  "</strong>" +

  "</div>" +
  "</div>" +
  "</div>";

$('.donation .row').append(html);
         
         if(index>1){
            return false;
         }
         
         });//$.each
      
      },
      
      error:function(err){
         console.log(err);
      }
   });
   

/*
   $.ajax({
      type:'post',
      url:'/Hangeulum/user/card_list_funding',
      
      success:function(data){
         console.log(JSON.stringify(data));
      },
      
      error:function(err){
         console.log(err);
      },
   });
*/
   
   $.ajax({
      type:'post',
      url:'/Hangeulum/user/card_list_funding',
      
      
      success:function(data){
         
        
         
      $.each(data, function(index, items){
          console.log(items.boardFSubject);
          console.log(items.boardFSeq);
          
         
         html =
  "<div class='col-md-4 col-sm-6'>" +
  "<div class='card' style='width: 18rem;'>" +
  "<img src='https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg' height='100px'>" +
  "<div class='card-body'>" +
  "<a href='/Hangeulum/funding/fun_view/" + items.boardFSeq + "'><h5 class='card-title'>" + items.boardFSubject + "</h5></a>" +
  "<p class='card-text'></p>" +

  "<div class='progress' aria-label='모금률'>" +
  "<span class='progress_bar' style='width: 80%;'></span>" +
  "</div>" +

  "<strong class='donation_percent'>" +
  "80%" +
  "</strong>" +

  "<strong class='donationcard_text'>" +

  "</strong>" +
  "</div>" +
  "</div>" +
  "</div>";

$('.fundingtext .row').append(html);
         
         if(index>1){
            return false;
         }
         
         });//$.each
            
      },
      
      error:function(err){
         console.log(err);
      }
   });
   
   
   

});