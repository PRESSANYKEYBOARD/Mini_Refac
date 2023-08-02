// 천 단위마다 ,찍기
// 문자열이여야 하며, Int형일 경우 반드시 문자열인 String형으로 변환해야 한다.
function addComma(value) {
  if (typeof value === "number") {
    value = String(value); // Int 형을 문자열로 변환
  }
  
  value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  return value;
}

function renderFundingList(fundings) {
    var now = new Date();
    var fundingList = "";

    for (var i = 0; i < fundings.length; i++) {
        (function (funding) { // 클로저 사용하여 파라미터 값 캡처
            var expireDate = new Date(funding.boardFExpireDate);
            var diffInDays = Math.round((expireDate - now) / (1000 * 60 * 60 * 24));
            var progress = funding.progress;
            var currentAmount = addComma(String(funding.currentAmount));
            var goalAmount = addComma(String(funding.boardFGoalAmount));
            var cardClass = diffInDays >= 0 ? "card" : "card expired";
            var daysText;
            
            if (diffInDays >= 0) {
            	daysText = diffInDays + "일 남음";
                cardClass += " clickable";
            } else {
                cardClass += " expired";
                daysText = Math.abs(diffInDays) + "일 지남";
            }

            var card = $("<div/>")
                .addClass(cardClass)
            	.append(
					$("<img/>")
						.attr("src", "/Hangeulum/storage/" + funding.boardFThumbnail)
						.attr("alt", "Image")
				)
				.append(
					$("<div/>")
						.addClass("card-body")
						.append($("<h2/>").addClass("card-title").text(funding.boardFSubject))
						.append($("<h4/>").text(funding.comName))
						.append($("<p/>").addClass("card-content").text(funding.description))
						.append(
							$("<div/>")
								.addClass("card-progress")
								.append(
									$("<div/>")
										.addClass("progress_bar")
										.css("width", progress + "%")
								)
						)
						.append($("<p/>").addClass("card-percent").text(progress + "%"))
						.append(
							$("<p/>")
								.addClass("price")
								.text("₩" + goalAmount)
						)
						.append(
							$("<a/>")
								.attr("href", "/Hangeulum/funding/fun_view/" + funding.boardFSeq)
								.addClass("card-button")
								.css("pointer-events", diffInDays >= 0 ? "auto" : "none")
								.text(diffInDays >= 0 ? "펀딩 참여하기" : "펀딩 종료")
						)
				)
				.append(
					$("<div/>")
						.addClass("card-footer")
						.append($("<span/>").text(daysText))
				);
				
			if ($(card).hasClass("expired")) { // 카드 클래스에서 expired가 포함되어 있으면...
		        $(card).css("cursor", "default");
		    } else {
		        $(card).css("cursor", "pointer");
		    }

            // 클로저 문제 해결을 위해 boardFSeq를 data 속성으로 저장
            card.data("boardFSeq", funding.boardFSeq);

            fundingList += card.prop("outerHTML");
        })(fundings[i]);
    }

    $(".card-container").empty().append(fundingList);

   	// 이벤트 위임을 사용하여 동적으로 생성된 요소에 클릭 이벤트 핸들러 추가
    $(".card-container").on("click", ".card", function () {
        if ($(this).hasClass("expired")) { // 카드 클래스에서 expired가 클래스에 대해 클릭 이벤트 막기
        	return;
        }
        
        var boardFSeq = $(this).find("a.card-button").attr("href").split("/").pop(); // 펀딩 ID 추출
        window.location.href = "/Hangeulum/funding/fun_view/" + boardFSeq;
    });
}

$(document).ready(function () {
    // 초기 페이지 로드시 펀딩 리스트를 불러옵니다.
    function loadFundingList() {
        $.ajax({
            url: "/Hangeulum/funding/fun_getBoardList",
            dataType: "json",
            success: function (response) {
                renderFundingList(response);
            },
            error: function (error) {
                console.log(error);
            }
        });
    }

    loadFundingList();
    
    // 글쓰기 버튼
	$("#writeButton").click(function() {
		window.location.href = "/Hangeulum/funding/fun_writeForm";
	});

    // selectbox의 값을 변경할 때마다 펀딩 리스트를 정렬하여 불러옵니다.
    $('#selectbox2').on('change', function() {
        var selectedOption = $('#selectbox2').val();
        $.ajax({
            type:'post',
            url:'/Hangeulum/funding/orderbydate',
            data: {option: selectedOption},
            dataType:'json',
            success:function(data) {
                console.log(JSON.stringify(data));
                renderFundingList(data);
            },
            error:function(err) {
                console.log(err);
            }
        });
    });
});
