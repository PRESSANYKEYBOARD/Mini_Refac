$(document).ready(function() {
    var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "boardFContent", // textarea의 name태그
	    sSkinURI: "/Hangeulum/smartEditor/SmartEditor2Skin.html",  // 본인 경로게 맞게 수정
	    fCreator: "createSEditor2",
	    
	    htParams : {
	        // 툴바 사용 여부
	        bUseToolbar : true,
	        // 입력창 크기 조절바 사용 여부
	        bUseVerticalResizer : true,
	        // 모드 탭(Editor | HTML | TEXT) 사용 여부
	        bUseModeChanger : true,
	    },
    });
	
	function pasteHTML(filepath) {
	    var sHTML = '';
	    oEditors.getById["boardFContent"].exec("PASTE_HTML", [sHTML]);
	}
    
    // 제출 버튼 클릭 이벤트 처리
    $('#writeBtn').on('click', function(event) {
        var confirmed = confirm("정말로 제출하시겠습니까?");
        if (confirmed) {
        	oEditors.getById["boardFContent"].exec("UPDATE_CONTENTS_FIELD", []); 
            event.preventDefault(); // 기본 제출 이벤트 중단
            
            var formData = new FormData(document.getElementById('fun_writeForm'));
            console.log(formData);

            $.ajax({
                url : "/Hangeulum/funding/fun_write",
                type : "POST",
                enctype : 'multipart/form-data',
                processData: false, // 데이터를 처리하지 않음
                contentType: false, // 컨텐츠 타입을 설정하지 않음
                data : formData,
                success : function() {
                    alert("펀딩 게시글 작성 완료");
                    // 이동할 페이지 주소
                    location.href = "/Hangeulum/funding/fun_main";
                },
                error : function(xhr, status, error) {
                    console.error(error);
                }
            });
        }
    });
});