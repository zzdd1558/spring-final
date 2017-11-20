<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
html
{
  background-color: #4c4c4c;
}

/* slides */
#slideshow
{
  background-color: #eeeeee;
	margin: 40px auto 0 auto;
  
	width: 60%;
	height: 400px;
	min-width: 320px;
	max-width: 640px;
	
  position: relative;
  overflow: hidden;
}

.slide
{
  position: absolute;
  width: auto;
  height: 100%;
  
  left: 50%;
  transform: translateX(-50%);
  
  opacity: 0;
}

.slide:first-child
{
	opacity: 1;
}

/* fade-out & fade-in */
@-webkit-keyframes fadeOut 
{
	0% {opacity: 1;}
	100% {opacity: 0;}
}
@-moz-keyframes fadeOut 
{
	0% {opacity: 1;}
	100% {opacity: 0;}
}
@keyframes fadeOut 
{
	0% {opacity: 1;}
	100% {opacity: 0;}
}


@-webkit-keyframes fadeIn 
{
	0% {opacity: 0;}
	100% {opacity: 1;}
}
@-moz-keyframes fadeIn 
{
	0% {opacity: 0;}
	100% {opacity: 1;}
}
@keyframes fadeIn 
{
	0% {opacity: 0;}
	100% {opacity: 1;}
}

.fade-out
{
	-webkit-animation-name: fadeOut;
  -webkit-animation-duration: 2s;
	-webkit-animation-fill-mode: forwards;
	animation-name: fadeOut;
	animation-duration: 2s;
  animation-fill-mode: forwards;
}

.fade-in
{
	-webkit-animation-name: fadeIn;
	-webkit-animation-duration: 1s;
	-webkit-animation-fill-mode: forwards;
	animation-name: fadeIn;
	animation-duration: 1s;
  animation-fill-mode: forwards;
}


/* selector buttons */
#btns-wrapper
{
	width: 50%;
  min-width: 300px;
  margin: 30px auto;
  text-align: center;
}

.selector-btn
{
	display: inline-block;
	vertical-align: middle;
  
  width: 15px;
	height: 15px;
	border-radius: 50%;
  padding: 0;
  
	border: 1px solid #000;
	background-color: #000;
  
  cursor: pointer;
  
  transition: background;
  transition-duration: 0.3s;
  transition-timing-function: linear;
}

.selector-btn:focus
{
  outline: none;
}

.selected-btn
{
	background-color: #fff;
}

/* progress bar */
.prog-bar /* always static */
{
	display: inline-block;
  vertical-align: middle;
	width: 15%;
	height: 1px;
	background-color: #000;
}

.prog-bar span /* animated with js */
{
  display: block;
  height: 100%;
  background-color: #fff;
}
</style>
</head>

<body>

<div id="slideshow">
	<img class="slide" src="http://placehold.it/856x380/FF6347/FFFFFF&text=access" alt="1"/>
  
  <img class="slide" src="http://placehold.it/856x380/6FC6F7/FFFFFF&text=2" alt="2"/>
  			
  <img class="slide" src="http://placehold.it/856x380/f3e686/FFFFFF&text=3" alt="3"/>
  
  <img class="slide" src="http://placehold.it/856x380/71eea3/FFFFFF&text=4" alt="4"/>
  
  <!--<img class="slide" src="http://placehold.it/856x380/d400c1/FFFFFF&text=5" alt="5"/>-->
</div>


<div id="btns-wrapper">
  <!-- added with JS based on number of slides -->
</div>


<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>




</body>
</html>