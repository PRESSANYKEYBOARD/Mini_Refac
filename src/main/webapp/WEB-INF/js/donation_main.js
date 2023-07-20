$(function(){
var html="";

    $.ajax({
        type: 'post',
        url: '/Hangeulum/donation/card_view',
        dataType: 'json', 
        success: function(data){
            console.log(JSON.stringify(data));
             console.log(data[0].bdSubject);
             console.log(data[0].bdSeq);
            
            $('div.yahoo').html(data[0].bdContent); 
			
			
			$.each(data, function(index, items){
			 console.log(items.fileName);
			
			html =
         	
		    "<div class='card'>"+
      		 "<a href='/Hangeulum/donation/donation_view?bdseq="+items.bdSeq+"'/><img src='/Hangeulum/storage/" + items.fileName + "' alt='카드 이미지' class='card-img' width='200' height='250'>"+
       		 "<div class='card-body'>"+
            "<div class='card-title'>" + items.bdSubject + "</div>"+
            "<h2 class='card-subtitle'>" + items.bdDonaGroup + "</h2>"+
        
        
           "<div class='progress' aria-label='모금률'>"+
            "<span class='progress_bar' style='width:27%;'></span>"+
             "</div>"+
             
             "<strong class='donation_percent'>"+
                             
             "</strong>"+
             
             "<strong class='donationcard_text'>"+
              
             "</strong>"+

     		  "</div>"+
       		 "</div>";

			  
			$('.container-card').append(html); 
			
			});//$.each
			
			
			
			
        
        },
        error: function(err){
            console.log(err);
        }               
    });
    
});