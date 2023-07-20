$(function(){
	alert('hi');

	$.ajax({
		type:'post',
		url:'/Hangeulum/user/activemain',
	   
	    
	    
	    success:function(data){
	    	alert('hi');
	    	console.log(data);
	    	
	    	console.log(data[0].donationactive);
	    	console.log(data[0].donacount);
	    	console.log(data[0].fundingactive);
	    	console.log(data[0].fundcount);
	    	
	    	$('.donation-status-point>span').text(data[0].donationactive);
	    	$('.donation-status-point-user>span').text(data[0].donacount);
	    	$('.funding-status-money>span').text(data[0].fundingactive);
	    	$('.funding-status-point>span').text(data[0].fundcount);
	
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
			
			$('.profile_img').attr('src','/Hangeulum/storage/'+data);
		},
		
		error:function(err){
			console.log(err);
		}
		

	});
	
	
	$.ajax({
		type:'post',
		url:'/Hangeulum/user/card_list',
		
		success:function(data){
			console.log(JSON.stringify(data));
			console.log(data[0].bdSeq);
			
		$.each(data, function(index, items){
          console.log(items.fileName);
         
         
         html =
           "<div class='col-md-4 col-sm-6' >"+
            "<div onclick='cardclick()' class='card' style='width: 18rem;'>"+
           "<img src='/Hangeulum/storage'>"+
              "<div class='card-body'>"+
                "<h5 class='card-title'>123</h5>"+
                "<p class='card-text'>"+items.bdSubject+"</p>"+
                  
                  "<div class='progress' aria-label='모금률'>"+
                  	"<span class='progress_bar' style='width:80%;'></span>"+
                  "</div>"+
                  
                  "<strong class='donation_percent'>"+
                  	
                  "</strong>"+
                  
                  "<strong class='donationcard_text'>"+
                  
                  "</strong>"+
                  
                 
                 "</div>"+
            "</div>"+
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
			console.log(JSON.stringify(data));
			
		$.each(data, function(index, items){
          console.log(items.fileName);
         
         
         html =
           "<div class='col-md-4 col-sm-6' >"+
            "<div class='card' style='width: 18rem;'>"+
           "<img src='https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg'>"+
              "<div class='card-body'>"+
                "<h5 class='card-title'>123</h5>"+
                "<a href='#'><p class='card-text'>"+items.comText+"</p></a>"+
                  
                  "<div class='progress' aria-label='모금률'>"+
                  	"<span class='progress_bar' style='width:80%;'></span>"+
                  "</div>"+
                  
                  "<strong class='donation_percent'>"+
                  	
                  "</strong>"+
                  
                  "<strong class='donationcard_text'>"+
                  
                  "</strong>"+
                  
                 
                 "</div>"+
            "</div>"+
            "</div>";

           
      	 $('.funding .row').append(html); 
         
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