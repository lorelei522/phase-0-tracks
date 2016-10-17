function borderInOrange(event) {
  console.log("Change border around to orange");
  console.log(event);
  event.target.style.border = "5px solid orange";
}

var title = document.getElementById("welcome");
title.addEventListener("click", borderInOrange);

function textInGreen(event) {
  console.log("Changing the text to green");
  console.log(event);
  event.target.style.color = "green";
}

var text = document.getElementById("activities");
text.addEventListener("click", textInGreen);


function blueText(event) {
  console.log("Changing text to red");
  event.target.style.color = "blue"
}

var nextText = document.getElementById("text");
nextText.addEventListener("mouseover", blueText);