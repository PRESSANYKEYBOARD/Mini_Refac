moment.locale('ko'); // For DateFormat

$(document).ready(function(){

	$.ajax({
		type: 'post',
		url: '/Hangeulum/support/getNoticeView',
		data: 'noticeSeq=' + $('#noticeSeq').val(),
			   // {'seq': $('#seq').val(),
			   //   'pg': $('#pg').val()},
		dataType: 'json',
		success: function(data){
			console.log(JSON.stringify(data));
			
			// 본문
			
			$('span#contentViewTitleSpan').text(data.noticeSubject);
			$('span#contentViewTitleDateSpan').text(moment(data.noticeDate, "YY/MM/DD").format('YYYY-MM-DD'));			
			$('span#contentViewContInnerSpan').text(data.noticeContent);
			// span 속성은 value가 없으므로 text 사용


			// admin 확인
			if($('#userId').val()=='admin'){
				$('div.updateNoticeDiv').show();
			} else {
				$('div.updateNoticeDiv').hide();
			}


			// 이전글, 다음글
			$.ajax({
				type: 'post',
				url: '/Hangeulum/support/getNoitceListPreNext',
				data: 'noticeSeq=' + $('#noticeSeq').val(),
				dataType: 'json',
				success: function(data2){
					console.log(JSON.stringify(data2));
					
					if (data2[0]) {
					  $('div#contentViewPageInner2Pre').append(data2[0] ? 
					    "<span class='contentViewPageInner2PreSearch' onclick='goToNotice(" + data2[0].noticeSeq + ")'>" + data2[0].noticeSubject + "</span>" : "");
					  $('div#contentViewPageInner3Pre').append(data2[0] ?
					    moment(data2[0].noticeDate, "YY/MM/DD").format('YYYY-MM-DD') + "</span>" : "")
					    .append("<span class='contentViewPageInner4Pre' style='display: none;'>" + data2[0].noticeSeq + "</span>");
					  
					  $('div#contentViewPagePreDiv').show();
					} else {
					  $('div#contentViewPagePreDiv').hide();
					}
					

					if(data2[1]){					
					$('div#contentViewPageInner2Next').append(data2[1] ? 
						"<span class='contentViewPageInner2NextSearch' onclick='goToNotice(" + data2[1].noticeSeq + ")'>" + data2[1].noticeSubject + "</span>" : "");
					$('div#contentViewPageInner3Next').append(data2[1] ?
					    moment(data2[1].noticeDate, "YY/MM/DD").format('YYYY-MM-DD')+ "</span>" : "")
					    .append("<span class='contentViewPageInner4Next' style='display: none;'>" + data2[1].noticeSeq + "</span>");
					    
					  
					    $('div#contentViewPageNextDiv').show();
					} else {
						$('div#contentViewPageNextDiv').hide();
					}					


					


/*
					$.each(data2, function(index, items){
						console.log(items.noticeSubject);
						$('span.contentViewPageInner2Span').text(items.noticeSubject);
						// $('span.contentViewPageInner3Span').text(moment(items.noticeDate, "YY/MM/DD").format('YYYY-MM-DD'));
					});
*/					


				},
				error: function(err){
					console.log(err);
				}				
			});			

			
		},
		error: function(err){
			console.log(err);
		}
	});
});




$('button.deleteNoticeBtn').click(function(){
	confirmRequest = confirm('해당 글을 정말 삭제하시겠습니까?')
	if(confirmRequest==true){

	$.ajax({
		type: 'post',
		url: '/Hangeulum/support/deleteNotice',
		data: 'noticeSeq=' + $('#noticeSeq').val(),
		success: function(data2){
			alert('해당 글을 삭제하였습니다.');
			location.href="/Hangeulum/support/noticeList";
		},
		error: function(err){
			console.log(err);
		}	
	});
	} else {
		
	}
	
});




$('div.contentViewPageInner2Pre').click(function(){
	location.href="/Hangeulum/support/noticeList";
	
});
