$(document).ready(function () {
    // 천 단위 , 적용 코드
    function addComma(value) {
        if (typeof value === "number") {
            value = String(value);
        }
        value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        return value;
    }

    var totalCount, unitPrice, totalPrice;

    function resetRewards() {
        $(".funding_reward_list1 .inp").val("1");
        $(".funding_reward_list1 .reward_item").removeClass("active");
    }

    function resetTotals() {
        totalCount = 0;
        unitPrice = 0;
        totalPrice = 0;
        $(".total_left span").text(addComma(totalCount));
        $(".total_right span").text(addComma(totalPrice));
    }

	// 천 단위 , 반영 코드
	// 기존 코드는 클릭 후 반영이 되므로 이 코드를 통해 초기화 작업이 필요...
    function updateTotal() {
        $(".total_left span").text(addComma(totalCount));
        $(".total_right span").text(addComma(totalPrice));
    }

    function resetAll() {
        resetRewards();
        resetTotals();
    }

    resetAll();
    updateTotal();

    $("#selectbox").change(function () {
        if ($(this).val() == "option2") {
            var count = parseInt($(".funding_reward_list1 .inp").val());
            totalCount = count;
            unitPrice = parseInt($(".funding_reward_list .price").text().replace(/,/g, ""));
            totalPrice = unitPrice * totalCount;

            updateTotal();
            $(".funding_reward_list1 .reward_item").addClass("active");
        } else {
            resetTotals();
            $(".funding_reward_list1 .reward_item").removeClass("active");
        }
    });

    $(".funding_reward_list1").on("click", ".reward_item", function () {
        $(".funding_reward_list1 .reward_item").removeClass("active");
        var count = parseInt($(this).parent().find(".inp").val());
        totalCount = count;
        unitPrice = parseInt($(this).parent().find(".price").text().replace(/,/g, ""));
        console.log(unitPrice)
        totalPrice = unitPrice * totalCount;

        updateTotal();
        $(this).addClass("active");
    });

    $(".funding_reward_list button.btn-close").on("click", function () {
        resetAll();
        updateTotal();
        $(".total-price").text(addComma(totalPrice));
    });

    $("._count :button").on({
        'click': function (e) {
            e.preventDefault();

            var $count = $(this).parent("._count").find(".inp");
            var now = parseInt($count.val());
            var min = 1;
            var max = 999;
            var num = now;

            if ($(this).hasClass("minus")) {
                var type = 'm';
            } else {
                var type = 'p';
            }

            if (type == 'm') {
                if (now > min) {
                    num = now - 1;
                }
            } else {
                if (now < max) {
                    num = now + 1;
                }
            }

            if (num != now) {
                $count.val(num);
                totalCount = num;
                totalPrice = unitPrice * totalCount;

                updateTotal();
            }
        }
    });

    $(".funding_reward_list button.btn-close").on("click", function () {
        resetAll();
        updateTotal();
        $("#selectbox").val("option1");
        $(".funding_reward").removeClass("active");
    });
});