console.log("js file is running")

var titles = document.getElementsByTagName("h1")
titles[0].style.color = "red"
titles[0].style.borderBottom = "8px solid yellow"
titles[0].addEventListener("mouseover",function(){titles[0].style.color = "black"});