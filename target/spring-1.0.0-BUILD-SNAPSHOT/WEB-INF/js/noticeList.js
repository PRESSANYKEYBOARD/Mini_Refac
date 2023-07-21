
moment.locale('ko'); // For DateFormat

$(function(){
	$.ajax({
		type: 'post',
		url: '/Hangeulum/support/getNoticeList',
		data: 'pg='+$('#pg').val(),
		dataType: 'json', // 객체는 데이터로 주고받지 못함
		success: function(data){
			console.log(JSON.stringify(data));
			
			//$.each(data.list, function(index, items){ // ajax each 반복문
			//	console.log(items.noticeSubject);
			//});
			
			$.each(data.list, function(index, items){ // ajax each 반복문
				$('<tr/>').append($('<td/>', {
					// noticeView로 넘어가기위한 seq값 return
					style: 'display: none;',
					// data로부터 받은 seq를 사용하기 위해서는 display: none으로 데이터를 먼저 받아야함
					text: items.noticeSeq
				})).append($('<td/>', {
					// style: 'border-top: 0.1px solid #e5e5e5; border-bottom: 0.1px solid #e5e5e5; padding-left: 10px; color: #666; font-size: 16px; font-weight: 100; letter-spacing: -0.07em; padding: 19px 20px; line-height: 24px;',
					class: 'contentBoardTableSubject',
				}).append($('<a/>', {
					// .append($('',{}).append($('',{})))
					href: '#',
					style: 'text-decoration: none; color: #666666;',
					class: 'noticeSubjectA noticeSubjectA'+items.noticeSeq,
					text: items.noticeSubject
				}))
				// result: <td><a href='#' + pg class="noticeSubjectA noticeSubjectAitems.seq">items.noticeSubject</a></td>
				).append($('<td/>', {
					// style: 'border-top: 0.1px solid #e5e5e5; border-bottom: 0.1px solid #e5e5e5; color: #666; font-size: 16px; font-weight: 100; letter-spacing: -0.07em; padding: 19px 20px; line-height: 24px;',
					class: 'contentBoardTableDate',
					align: 'center',
					text: moment(items.noticeDate, "YY/MM/DD").format('YYYY-MM-DD')
				})).appendTo($('table.contentBoardTable'));
				
			}); // each
			

			// 페이징 처리
			$('div.contentPaging').html(data.noticeListPaging.pagingHTML);
			
			
			// noticeView 이동
			$('a.noticeSubjectA').click(function(){
				var noticeSeq = $(this).parent().prev().text(); // SEQ.val() 반환
				// 자신($(this)).부모(td).형제(tr).값(seq)
				console.log(noticeSeq);

				// var noticePg = $('#pg').val();
				location.href='/Hangeulum/support/noticeView?seq=' + noticeSeq + '&pg=' + $('#pg').val();
			}); // noticeSubjectA
		},
		error: function(err){
			console.log(err);
		}		
	}); // ajax
	

	
}); // load





// 검색
$('button#contentSearchClickBtn').click(function(){

var checkOpt = $('select.contentSearchSelectBox option:selected').val();
console.log(checkOpt);
console.log($('#pg').val());
console.log($('input.contentSearchContent').val());

	if($('input#formQPhone3').val()==''){
		alert("검색어를 입력해주세요.");	
	} else {

   $('table.contentBoardTable .contentBoardTableSubject').remove();
   $('table.contentBoardTable .contentBoardTableDate').remove();

	

	$.ajax({
		type: 'get',
		url: '/Hangeulum/support/getSearchList',
		data: {'checkOpt': checkOpt,
			   'searchCont': $('input.contentSearchContent').val(),
			   'pg': $('#pg').val()},
		dataType: 'json',
		success: function(data){
			
			console.log(JSON.stringify(data));
			
			$.each(data.list, function(index, items){ // ajax each 반복문
				$('<tr/>').append($('<td/>', {
					// noticeView로 넘어가기위한 seq값 return
					style: 'display: none;',
					// data로부터 받은 seq를 사용하기 위해서는 display: none으로 데이터를 먼저 받아야함
					text: items.noticeSeq
				})).append($('<td/>', {
					// style: 'border-top: 0.1px solid #e5e5e5; border-bottom: 0.1px solid #e5e5e5; padding-left: 10px; color: #666; font-size: 16px; font-weight: 100; letter-spacing: -0.07em; padding: 19px 20px; line-height: 24px;',
					class: 'contentBoardTableSubject',
				}).append($('<a/>', {
					// .append($('',{}).append($('',{})))
					href: '#',
					style: 'text-decoration: none; color: #666666;',
					class: 'noticeSubjectA noticeSubjectA'+items.noticeSeq,
					text: items.noticeSubject
				}))
			
				// result: <td><a href='#' + pg class="noticeSubjectA noticeSubjectAitems.seq">items.noticeSubject</a></td>
				).append($('<td/>', {
					// style: 'border-top: 0.1px solid #e5e5e5; border-bottom: 0.1px solid #e5e5e5; color: #666; font-size: 16px; font-weight: 100; letter-spacing: -0.07em; padding: 19px 20px; line-height: 24px;',
					class: 'contentBoardTableDate',
					align: 'center',
					text: moment(items.noticeDate, "YY/MM/DD").format('YYYY-MM-DD')
				})).appendTo($('table.contentBoardTable'));
				
			}); // each
			

			// 페이징 처리
			$('div.contentPaging').html(data.noticeListPaging.pagingHTML);
			
			
			// noticeView 이동
			$('a.noticeSubjectA').click(function(){
				var noticeSeq = $(this).parent().prev().text(); // SEQ.val() 반환
				// 자신($(this)).부모(td).형제(tr).값(seq)
				console.log(noticeSeq);

				// var noticePg = $('#pg').val();
				location.href='/Hangeulum/support/noticeView?seq=' + noticeSeq + '&pg=' + $('#pg').val();
			}); // noticeSubjectA
		},
		error: function(err){
			console.log(err);
		}		
	
	}); // ajax
	
	
	function noticeListPaging(pg) {
		//location.href = "/Hangeulum/support/noticeList?pg=" + pg + '&checkOpt=' + checkOpt + '&searchCont=' + searchCont;
		location.href = "/Hangeulum/support/noticeList?pg=" + pg + '&checkOpt=' + checkOpt + '&searchCont=' + searchCont;
	}
	// userPaging에서 동적으로 들어오는 데이터에서 onclick method name: boardPaging
	
	
	
	}
});




