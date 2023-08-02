// 천 단위마다 ,찍기
// 문자열이여야 하며, Int형일 경우 반드시 문자열인 String형으로 변환해야 한다.
function addComma(value) {
  if (typeof value === "number") {
    value = String(value); // Int 형을 문자열로 변환
  }

  value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  return value;
}

function renderDonationList(donations) {
	var now = new Date();
	var donationList = "";
	
	for (var i = 0; i < donations.length; i++) {
		(function (donation) {
			var expireDate = new Date(donation.bdExpireDate);
			var diffInDays = Math.round((expireDate - now) / (1000 * 60 * 60 * 24));
			var currentAmount = addComma(String(donation.bdCumulativeAmount));
			var progress = donation.progress;
			var goalAmount = addComma(String(donation.bdGoalAmount));
            var cardClass = diffInDays >= 0 ? "card" : "card expired";
            var daysText = diffInDays >= 0 ? diffInDays + "일 남음" : Math.abs(diffInDays) + "일 지남";
            
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
						.attr("src", "/Hangeulum/storage/" + donation.fileName)
						.attr("alt", "카드 이미지")
				)
				.append(
					$("<div/>")
						.addClass("card-body")
						.append($("<h2/>").addClass("card-title").text(donation.bdSubject))
						.append($("<p/>").addClass("card-content").text(donation.description))
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
							.attr("href", "/Hangeulum/funding/dona_view/" + donation.bdseq)
							.addClass("card-button")
							.css("pointer-events", diffInDays >= 0 ? "auto" : "none")
							.text(diffInDays >= 0 ? "도네이션 참여하기" : "도네이션 종료")
						)
				)
				.append(
					$("<div/>")
						.addClass("card-footer")
						.append($("<span/>").text(daysText))
				);
				
			if ($(card).hasClass("expired")) {
		        $(card).css("cursor", "default");
		    } else {
		        $(card).css("cursor", "pointer");
		    }

            // 클로저 문제 해결을 위해 bdSeq를 data 속성으로 저장
            card.data("bdSeq", donation.bdSeq);

            donationList += card.prop("outerHTML");

		})(donations[i]);
	}

	$(".card-container").empty().append(donationList);

	// 이벤트 위임을 사용하여 동적으로 생성된 요소에 클릭 이벤트 핸들러 추가
	$(".container-card").on("click", ".card", function () {
		if ($(this).hasClass("expired")) {
			return;
		}
		
		var bdSeq = $(this).find("a.card-button").attr("href").split("/").pop();
		window.location.href = "/Hangeulum/donation/dona_view/" + bdSeq;
	});
}

$(document).ready(function () {
    // 초기 페이지 로드시 도네이션 리스트를 불러옵니다.
    function loadDonationList() {
        $.ajax({
            url: "/Hangeulum/donation/dona_getBoardList",
            dataType: "json",
            success: function (response) {
                renderDonationList(response);
            },
            error: function (error) {
                console.log(error);
            }
        });
    }

    loadDonationList();
    
    // 글쓰기 버튼
	$("#writeButton").click(function() {
		window.location.href = "/Hangeulum/donation/dona_writeForm";
	});
});