$(document).ready(function() {
  var unitPrice = parseInt($(".funding_reward_list li span").text().replace(/,/g, ""));
  var totalCount = parseInt($(".total_left span").text().replace(/,/g, ""));
  var totalPrice = parseInt($(".total_right span").text().replace(/,/g, ""));

  function resetRewards() {
    $(".funding_reward_list1 .inp").val("1");
    $(".funding_reward_list1 .reward_item").removeClass("active");
  }

  function resetTotals() {
    totalCount = 0;
    unitPrice = 0;
    totalPrice = 0;
    $(".total_left span").text(totalCount);
    $(".total_right span").text(totalPrice.toLocaleString());
  }

  function resetAll() {
    resetRewards();
    resetTotals();
  }

  $("#selectbox").change(function() {
    if ($(this).val() == "option2") {
      var count = parseInt($(".funding_reward_list1 .inp").val());
      totalCount = count;
      unitPrice = parseInt($(".funding_reward_list .price").text().replace(/,/g, ""));
      totalPrice = unitPrice * totalCount;
      $(".funding_reward_list1 .reward_item").addClass("active");
    } else {
      totalCount = 0;
      unitPrice = 0;
      totalPrice = 0;
      $(".funding_reward_list1 .reward_item").removeClass("active");
    }
    $(".total_left span").text(totalCount);
    $(".total_right span").text(totalPrice.toLocaleString());
  });

  $(".funding_reward_list1").on("click", ".reward_item", function() {
    $(".funding_reward_list1 .reward_item").removeClass("active");
    var count = parseInt($(this).parent().find(".inp").val());
    totalCount = count;
    unitPrice = parseInt($(this).parent().find(".price").text().replace(/,/g, ""));
    totalPrice = unitPrice * totalCount;
    $(".total_left span").text(totalCount);
    $(".total_right span").text(totalPrice.toLocaleString());
    $(this).addClass("active");
  });

  $(".funding_reward_list button.btn-close").on("click", function() {
    totalCount = 0;
    unitPrice = 0;
    totalPrice = 0;
    $(".total-quantity").text(totalCount);
    $(".total-price").text(totalPrice.toLocaleString());
  });

  $("._count :button").on({
    'click': function(e) {
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

        $(".total_left span").text(totalCount);
        $(".total_right span").text(totalPrice.toLocaleString());
      }
    }
  });

	$(".funding_reward_list button.btn-close").on("click", function() {
	  resetAll();
	  $("#selectbox").val("option1");
	  $(".funding_reward").removeClass("active");
	});
});