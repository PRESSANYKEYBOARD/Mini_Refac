//천 단위마다 ,찍기
//문자열이여야 하며, Int형일 경우 반드시 문자열인 String형으로 변환해야 한다.
function addComma(value) {
  if (typeof value === "number") {
    value = String(value); //Int 형을 문자열로 변환
  }
  
  value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  return value;
}

$(document).ready(function () {

	var now = new Date();

	function renderFundingList(fundings) {
		var fundingList = "";
		for (var i = 0; i < fundings.length; i++) {
	  		var funding = fundings[i];
	  		var expireDate = new Date(funding.boardFExpireDate);
			var diffInDays = Math.round((expireDate - now) / (1000 * 60 * 60 * 24));
			var progress = funding.progress;
			var currentAmount = addComma(String(funding.currentAmount));
			var goalAmount = addComma(String(funding.boardFGoalAmount));
	
			var card = $("<div/>")
				.addClass("card")
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
                .text("펀딩 참여하기")
            	)
            )
	          .append(
	          $("<div/>")
	            .addClass("card-footer")
	            .append($("<span/>").text(diffInDays + "일 남음"))
        );

      fundingList += card.prop("outerHTML");
    }
    
    $(".card-container").empty().append(fundingList);
  }

    // 초기 페이지 로드시 펀딩 리스트를 불러옵니다.
    $.ajax({
        url: "/Hangeulum/funding/fun_getBoardList",
        dataType: "json",
        success: function(response) {
            renderFundingList(response);
        },
        error: function(error) {
            console.log(error);
        }
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
