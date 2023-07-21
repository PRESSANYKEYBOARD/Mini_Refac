// 페이지 로드 시, 답변 내용 숨기기
$(function(){
    $('div.contentFaqContent').hide();
});





// toggle 작동 방식, Btn 클릭
$('ul.contentFaqSubject > li:eq(0) > span.contentFaqSubjectToggleBtn > input').click(function(){
    $('ul.contentFaqSubject > div.contentFaqContent:eq(0)').toggle(0);
    if($('ul.contentFaqSubject > li:eq(0) > span.contentFaqSubjectToggleBtn > input').attr("value") === "▼"){
        $('ul.contentFaqSubject > li:eq(0) > span.contentFaqSubjectToggleBtn > input').attr("value", "▲");
        $('ul.contentFaqSubject > li:eq(0) > span.contentFaqSubjectQ').css("color", "#00ab33").css("font-weight", "600");
        $('ul.contentFaqSubject > li:eq(0) > span:eq(1)').css("color", "#00ab33").css("font-weight", "600");

    } else if($('ul.contentFaqSubject > li:eq(0) > span.contentFaqSubjectToggleBtn > input').attr("value") === "▲"){
        $('ul.contentFaqSubject > li:eq(0) > span.contentFaqSubjectToggleBtn > input').attr("value", "▼");
        $('ul.contentFaqSubject > li:eq(0) > span.contentFaqSubjectQ').css("color", "#666666").css("font-weight", "normal");
        $('ul.contentFaqSubject > li:eq(0) > span:eq(1)').css("color", "#666666").css("font-weight", "normal");
    }
});

$('ul.contentFaqSubject > li:eq(1) > span.contentFaqSubjectToggleBtn > input').click(function(){
    $('ul.contentFaqSubject > div.contentFaqContent:eq(1)').toggle(0);
    if($('ul.contentFaqSubject > li:eq(1) > span.contentFaqSubjectToggleBtn > input').attr("value") === "▼"){
        $('ul.contentFaqSubject > li:eq(1) > span.contentFaqSubjectToggleBtn > input').attr("value", "▲");
        $('ul.contentFaqSubject > li:eq(1) > span.contentFaqSubjectQ').css("color", "#00ab33").css("font-weight", "600");
        $('ul.contentFaqSubject > li:eq(1) > span:eq(1)').css("color", "#00ab33").css("font-weight", "600");
    } else if($('ul.contentFaqSubject > li:eq(1) > span.contentFaqSubjectToggleBtn > input').attr("value") === "▲"){
        $('ul.contentFaqSubject > li:eq(1) > span.contentFaqSubjectToggleBtn > input').attr("value", "▼");
        $('ul.contentFaqSubject > li:eq(1) > span.contentFaqSubjectQ').css("color", "#666666").css("font-weight", "normal");
        $('ul.contentFaqSubject > li:eq(1) > span:eq(1)').css("color", "#666666").css("font-weight", "normal");
    }
});

$('ul.contentFaqSubject > li:eq(2) > span.contentFaqSubjectToggleBtn > input').click(function(){
    $('ul.contentFaqSubject > div.contentFaqContent:eq(2)').toggle(0);
    if($('ul.contentFaqSubject > li:eq(2) > span.contentFaqSubjectToggleBtn > input').attr("value") === "▼"){
        $('ul.contentFaqSubject > li:eq(2) > span.contentFaqSubjectToggleBtn > input').attr("value", "▲");
        $('ul.contentFaqSubject > li:eq(2) > span.contentFaqSubjectQ').css("color", "#00ab33").css("font-weight", "600");
        $('ul.contentFaqSubject > li:eq(2) > span:eq(1)').css("color", "#00ab33").css("font-weight", "600");
    } else if($('ul.contentFaqSubject > li:eq(2) > span.contentFaqSubjectToggleBtn > input').attr("value") === "▲"){
        $('ul.contentFaqSubject > li:eq(2) > span.contentFaqSubjectToggleBtn > input').attr("value", "▼");
        $('ul.contentFaqSubject > li:eq(2) > span.contentFaqSubjectQ').css("color", "#666666").css("font-weight", "normal");
        $('ul.contentFaqSubject > li:eq(2) > span:eq(1)').css("color", "#666666").css("font-weight", "normal");
    }
});

$('ul.contentFaqSubject > li:eq(3) > span.contentFaqSubjectToggleBtn > input').click(function(){
    $('ul.contentFaqSubject > div.contentFaqContent:eq(3)').toggle(0);
    if($('ul.contentFaqSubject > li:eq(3) > span.contentFaqSubjectToggleBtn > input').attr("value") === "▼"){
        $('ul.contentFaqSubject > li:eq(3) > span.contentFaqSubjectToggleBtn > input').attr("value", "▲");
        $('ul.contentFaqSubject > li:eq(3) > span.contentFaqSubjectQ').css("color", "#00ab33").css("font-weight", "600");
        $('ul.contentFaqSubject > li:eq(3) > span:eq(1)').css("color", "#00ab33").css("font-weight", "600");
    } else if($('ul.contentFaqSubject > li:eq(3) > span.contentFaqSubjectToggleBtn > input').attr("value") === "▲"){
        $('ul.contentFaqSubject > li:eq(3) > span.contentFaqSubjectToggleBtn > input').attr("value", "▼");
        $('ul.contentFaqSubject > li:eq(3) > span.contentFaqSubjectQ').css("color", "#666666").css("font-weight", "normal");
        $('ul.contentFaqSubject > li:eq(3) > span:eq(1)').css("color", "#666666").css("font-weight", "normal");
    }
});

$('ul.contentFaqSubject > li:eq(4) > span.contentFaqSubjectToggleBtn > input').click(function(){
    $('ul.contentFaqSubject > div.contentFaqContent:eq(4)').toggle(0);
    if($('ul.contentFaqSubject > li:eq(4) > span.contentFaqSubjectToggleBtn > input').attr("value") === "▼"){
        $('ul.contentFaqSubject > li:eq(4) > span.contentFaqSubjectToggleBtn > input').attr("value", "▲");
        $('ul.contentFaqSubject > li:eq(4) > span.contentFaqSubjectQ').css("color", "#00ab33").css("font-weight", "600");;
        $('ul.contentFaqSubject > li:eq(4) > span:eq(1)').css("color", "#00ab33").css("font-weight", "600");
    } else if($('ul.contentFaqSubject > li:eq(4) > span.contentFaqSubjectToggleBtn > input').attr("value") === "▲"){
        $('ul.contentFaqSubject > li:eq(4) > span.contentFaqSubjectToggleBtn > input').attr("value", "▼");
        $('ul.contentFaqSubject > li:eq(4) > span.contentFaqSubjectQ').css("color", "#666666").css("font-weight", "normal");
        $('ul.contentFaqSubject > li:eq(4) > span:eq(1)').css("color", "#666666").css("font-weight", "normal");
    }
});



// toggleBtn li tag에 trigger 적용
$('ul.contentFaqSubject > li:eq(0) > span:eq(0)').click(function(){
    $('ul.contentFaqSubject > li:eq(0) > span.contentFaqSubjectToggleBtn > input').trigger('click');
});
$('ul.contentFaqSubject > li:eq(0) > span:eq(1)').click(function(){
    $('ul.contentFaqSubject > li:eq(0) > span.contentFaqSubjectToggleBtn > input').trigger('click');
});

$('ul.contentFaqSubject > li:eq(1) > span:eq(0)').click(function(){
    $('ul.contentFaqSubject > li:eq(1) > span.contentFaqSubjectToggleBtn > input').trigger('click');
});
$('ul.contentFaqSubject > li:eq(1) > span:eq(1)').click(function(){
    $('ul.contentFaqSubject > li:eq(1) > span.contentFaqSubjectToggleBtn > input').trigger('click');
});

$('ul.contentFaqSubject > li:eq(2) > span:eq(0)').click(function(){
    $('ul.contentFaqSubject > li:eq(2) > span.contentFaqSubjectToggleBtn > input').trigger('click');
});
$('ul.contentFaqSubject > li:eq(2) > span:eq(1)').click(function(){
    $('ul.contentFaqSubject > li:eq(2) > span.contentFaqSubjectToggleBtn > input').trigger('click');
});

$('ul.contentFaqSubject > li:eq(3) > span:eq(0)').click(function(){
    $('ul.contentFaqSubject > li:eq(3) > span.contentFaqSubjectToggleBtn > input').trigger('click');
});
$('ul.contentFaqSubject > li:eq(3) > span:eq(1)').click(function(){
    $('ul.contentFaqSubject > li:eq(3) > span.contentFaqSubjectToggleBtn > input').trigger('click');
});

$('ul.contentFaqSubject > li:eq(4) > span:eq(0)').click(function(){
    $('ul.contentFaqSubject > li:eq(4) > span.contentFaqSubjectToggleBtn > input').trigger('click');
});
$('ul.contentFaqSubject > li:eq(4) > span:eq(1)').click(function(){
    $('ul.contentFaqSubject > li:eq(4) > span.contentFaqSubjectToggleBtn > input').trigger('click');
});



// 서브메뉴 클릭에 따른 데이터 조회

$('li#contentConMenuItem0').click(function(){
    $('li#contentConMenuItem0').css("color", "#00ab33");
    $('li#contentConMenuItem0').css("font-weight", "600");

    $('li#contentConMenuItem1').css("color", "#666666");
    $('li#contentConMenuItem1').css("font-weight", "normal");
});

$('li#contentConMenuItem1').click(function(){
    $('li#contentConMenuItem1').css("color", "#00ab33");
    $('li#contentConMenuItem1').css("font-weight", "600");

    $('li#contentConMenuItem0').css("color", "#666666");
    $('li#contentConMenuItem0').css("font-weight", "normal");
});




// 만족도 조사 버튼(Y)
$('button#faqListFeedBtnY:eq(0)').click(function(){
    $('div.faqListFeedBack').eq(0).html('<img src="https://ssl.pstatic.net/static/help/new_help/img/svg/feedback_submit.svg" width="24" height="24"><span>&nbsp;&nbsp;소중한 의견에 감사합니다.<span>');
});
$('button#faqListFeedBtnY:eq(1)').click(function(){
    $('div.faqListFeedBack').eq(1).html('<img src="https://ssl.pstatic.net/static/help/new_help/img/svg/feedback_submit.svg" width="24" height="24"><span>&nbsp;&nbsp;소중한 의견에 감사합니다.<span>');
});
$('button#faqListFeedBtnY:eq(2)').click(function(){
    $('div.faqListFeedBack').eq(2).html('<img src="https://ssl.pstatic.net/static/help/new_help/img/svg/feedback_submit.svg" width="24" height="24"><span>&nbsp;&nbsp;소중한 의견에 감사합니다.<span>');
});
$('button#faqListFeedBtnY:eq(3)').click(function(){
    $('div.faqListFeedBack').eq(3).html('<img src="https://ssl.pstatic.net/static/help/new_help/img/svg/feedback_submit.svg" width="24" height="24"><span>&nbsp;&nbsp;소중한 의견에 감사합니다.<span>');
});
$('button#faqListFeedBtnY:eq(4)').click(function(){
    $('div.faqListFeedBack').eq(4).html('<img src="https://ssl.pstatic.net/static/help/new_help/img/svg/feedback_submit.svg" width="24" height="24"><span>&nbsp;&nbsp;소중한 의견에 감사합니다.<span>');
});



// 만족도 조사 버튼(N)
$('button.faqListFeedBtnN').click(function(){
    $(this).parents('div.faqListFeedBack').html('<span>도움이 되지 않은 사유를 알려주세요.<br/>더 나은 도움말 제공을 위해 소중히 활용하겠습니다.</span>')
        .append($('<div style="padding: 10px 20px"><div style="height: 100px; padding: 10px; background-color: #f9f9f9;"><textarea style="width: 100%; height: 100%; border: 0; line-height: 24px; letter-spacing: -.5px; font-size: 16px; color: #444; background-color: #f9f9f9; resize: none;" placeholder="의견을 입력해 주세요."></textarea></div></div>'))
        .append($('<button class="faqListFeedBtnNSubmit" type="button" style="width: 135px; padding: 8px 0; font-size: 16px; line-height: 26px; letter-spacing: -.47px; border: 1px solid #f0f0f0; border-radius: 22px; color: #222222;">평가 완료</button>'));
});
// Because html tag is standalone, others have to use append tag.
//div<span>
//

$(document).on('mouseenter', 'button.faqListFeedBtnNSubmit', function() {
    $(this).css('background-color', '#03c75a').css('color', '#ffffff');
  }).on('mouseleave', 'button.faqListFeedBtnNSubmit', function() {
    $(this).css('background-color', '#f0f0f0').css('color', '#212529');
  }).on('click', 'button.faqListFeedBtnNSubmit', function() {
    var inputVal = $('div.faqListFeedBack textarea').eq(4).val();
    if (inputVal == '') {
        alert('소중한 의견을 남겨주세요.');
    }
    if (inputVal != '') {
        $(this).parent('.faqListFeedBack').html('<img src="https://ssl.pstatic.net/static/help/new_help/img/svg/feedback_submit.svg" width="24" height="24"><span>&nbsp;&nbsp;소중한 의견에 감사합니다.<span>');
    }
});


