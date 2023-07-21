 $.ajax({
	  url: '/Hangeulum/funding/getCommentList', // COMMENT_F 테이블 정보를 가져올 url
	  method: 'GET',
	  data: { boardFSeq: boardFSeq }, // 해당 게시글의 번호를 파라미터로 전달 */
	  success: function(response) {
	    // 가져온 정보를 이용하여 참여내역 리스트의 html 코드를 생성
	    var commentListHtml = '';
	    for (var i = 0; i < response.length; i++) {
	      commentListHtml += '<li>' +
	                          '<div class="reply_thumbnail"><img src="' + response[i].fileName + '"></div>' +
	                          '<div class="reply_date">' + response[i].boardFBuyDate + '</div>' +
	                          '<div class="reply_user">' + response[i].userId + '님 ' + response[i].boardFPickAmount + '원 참여</div>' +
	                        '</li>';
	    }
	    
	    // 생성된 html 코드를 참여내역 리스트의 ul 태그 내부에 추가
	    $('.content_reply ul').append(commentListHtml);
	    
	    // 참여내역 총 인원 수 업데이트
	    $('.content_reply p span').text(response.length);
	  }
	});