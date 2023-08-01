/* 버튼 클릭 시 페이지 맨 위로 자연스럽게 스크롤되도록 설정 */
document.querySelector('.hidden_button').addEventListener('click', function() {
  window.scrollTo({
    top: 0,
    left: 0,
    behavior: 'smooth'
  });
});