// select the reward list and hide it
var rewardList = document.querySelector(".funding_reward_list");
rewardList.style.display = "none";

// select the dropdown and close button
var selectbox = document.getElementById("selectbox");
var closeButton = document.querySelector(".funding_reward_list .btn-close");

// add event listener to the dropdown
selectbox.addEventListener("change", function() {
  // show the reward list if the selected option is "도시락 12종 세트"
  if (this.value === "option2") {
    rewardList.style.display = "block";
  } else {
    rewardList.style.display = "none";
  }
});

// add event listener to the close button
closeButton.addEventListener("click", function() {
  // hide the reward list
  rewardList.style.display = "none";
  // reset the dropdown value
  selectbox.value = "option1";
});
