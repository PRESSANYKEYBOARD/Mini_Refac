$(function(){
   		alert('hi');
   		var html;
   		
   		$.ajax({
   			type:'post',
   			url:'/Hangeulum/donation/card_view',
   			
   			success:function(data){
   				 
   				console.log(JSON.stringify(data));
   				
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
   			
   			error:function(err){
   				console.log(err);
   			}
   		
   		});  //ajax end
   		
  }); //function end





$('.category-link-total').click(function(){
   		alert('hi');
   		var html;
   		
   		$('.container-card .card').remove();
   		
   		
   		$.ajax({
   			type:'post',
   			url:'/Hangeulum/donation/card_view',
   			
   			success:function(data){
   				 
   			console.log(JSON.stringify(data));
   			
   				
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
   			
   			error:function(err){
   				console.log(err);
   			}
   		
   		});  //ajax end
   		
  }); //click end


   
  $('.category-link-child').click(function(){  
   alert('child');
   var child = $('.child').text();
   var html;

	$('.container-card .card').remove();


	$.ajax({
		type:'post',
		url:'/Hangeulum/donation/CardChildList',
		data:{'child':child},
		
		success:function(data){
		//	alert(JSON.stringify(data));
		//	consoloe.log(JSON.stringify(data));
			
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
		error:function(err){
			console.log(err);
		}
	
	});

   });





  $('.category-link-adult').click(function(){  
   alert('adult');
   var child = $('.adult').text();
   var html;

	$('.container-card .card').remove();


	$.ajax({
		type:'post',
		url:'/Hangeulum/donation/CardChildList',
		data:{'child':child},
		
		success:function(data){
		//	alert(JSON.stringify(data));
		//	consoloe.log(JSON.stringify(data));
			
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
		error:function(err){
			console.log(err);
		}
	
	});

   });



  $('.category-link-disabled').click(function(){  
   alert('adult');
   var child = $('.disabled').text();
   var html;

	$('.container-card .card').remove();


	$.ajax({
		type:'post',
		url:'/Hangeulum/donation/CardChildList',
		data:{'child':child},
		
		success:function(data){
		//	alert(JSON.stringify(data));
		//	consoloe.log(JSON.stringify(data));
			
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
		error:function(err){
			console.log(err);
		}
	
	});

   });



















   




// 카테고리에 해당하는 게시물 가져오기
function getRelatedPostsByCategory(category) {
    /*console.log('하이: ' + $('#childrenViewSearch').val());*/
    /*console.log('하이: ' + $('#childrenViewSearch').val(donationmain_cate));*/
    
    $.ajax({
        type: 'post',
        url: '/Hangeulum/donation/donationmain_cate',
        data: { 'categorydona': $('#category-1').val() },
        dataType: 'json',
        success: function(data) {
            console.log(JSON.stringify(data));
        },
        error: function(err) {
            console.log(err);
        }
    });
}

	
