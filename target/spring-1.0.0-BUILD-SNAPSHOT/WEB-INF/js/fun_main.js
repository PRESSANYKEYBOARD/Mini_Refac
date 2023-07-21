$(document).ready(function() {
    var now = new Date();

    function renderFundingList(fundings) {
        var fundingList = "";
        for (var i = 0; i < fundings.length; i++) {
            var funding = fundings[i];
            var expireDate = new Date(funding.boardFExpireDate);
            var diffInDays = Math.round((expireDate - now) / (1000 * 60 * 60 * 24));
            fundingList +=
                "<div class='col-md-4 col-sm-6'>" +
                "<div class='card' style='width: 18rem;'>" +
                "<img src='/Hangeulum/storage/" +
                funding.boardFThumbnail +
                "' class='card-img-top' alt='끼에엨'>" +
                "<div class='card-body'>" +
                "<h5 class='card-title'>" +
                funding.boardFSubject +
                "</h5>" +
                "<p class='card-text'>" +
                funding.comName +
                "</p>" +
                "<a href='/Hangeulum/funding/fun_view/" + funding.boardFSeq + "' class='btn btn-primary'>펀딩 참여하기</a>" +
                "</div>" +
                "<ul class='list-group list-group-flush'>" +
                "<li class='list-group-item'>" +
                "<div class='progress'>" +
                "<div class='progress-bar bg-success progress-bar-striped progress-bar-animated' role='progressbar'" +
                "style='width: " +
                60 +
                "%;' aria-valuenow='" +
                funding.progress +
                "' aria-valuemin='0' aria-valuemax='100'>" +
                60 +
                "%</div>" +
                "</div>" +
                "</li>" +
                "<li class='list-group-item'><span>" +
                funding.boardFGoalAmount +
                "</span>원</li>" +
                "</ul>" +
                "<div class='card-footer'><span>" +
                diffInDays +
                "</span>일 남음</div>" +
                "</div>" +
                "</div>";
        }
        $("#funding-list").empty().append(fundingList);
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
