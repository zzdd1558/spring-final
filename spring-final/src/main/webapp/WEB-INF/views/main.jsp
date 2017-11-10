<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-head.jspf"%>
<style type="text/css">
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Karma", sans-serif
}
.w3-bar-block .w3-bar-item {
	padding: 20px
}
</style>
</head>

<body>
	<!-- Header -->
	
	<header>
		<%@ include file="/WEB-INF/include/include-header.jspf"%>
	</header>


	<!-- Sidebar -->
	
	<div id="mySidenav" class="w3-sidebar w3-gray"
		style="width: 4%; right: 0px;">
		<a href="javascript:void(0)" onclick="OnOffNav()"
			style="width: 10px; height: 55px; margin-left: -10px; background: skyblue; position: fixed; top: 50%;"></a>
		<a href="#" class="w3-bar-item w3-button">Link 1</a> <a href="#"
			class="w3-bar-item w3-button">Link 2</a> <a href="#"
			class="w3-bar-item w3-button">Link 3</a>
	</div>

	<!-- !MAIN CONTENTS! -->
	
	<!-- SlideShow -->
	
	<!-- 전체 div 잡아서 크기 조절 -->
	<div id="main" style="max-width: 100%; margin: 0; padding: 0;">
		
		<div class="w3-light-grey w3-center">
			<div class=" w3-bar ">
				<a href="#" class="w3-bar-item w3-button ">Link 1</a> <a href="#"
					class="w3-bar-item w3-button ">Link 2</a> <a href="#"
					class="w3-bar-item w3-button ">Link 3</a>
			</div>
		</div>

		<div class="w3-content w3-display-container">
			<img class="mySlides" src="./w3images/img_nature_wide.jpg"
				style="width: 100%"> <img class="mySlides"
				src="./w3images/img_fjords_wide.jpg" style="width: 100%"> <img
				class="mySlides" src="./w3images/img_mountains_wide.jpg"
				style="width: 100%">
			<div
				class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle"
				style="width: 100%">
				<div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
				<div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
			</div>
		</div>
		<div class="w3-center w3-container w3-section">
			<button class="w3-button demo" onclick="currentDiv(1)">1</button>
			<button class="w3-button demo" onclick="currentDiv(2)">2</button>
			<button class="w3-button demo" onclick="currentDiv(3)">3</button>
		</div>




		<!-- !PAGE CONTENT! -->

		<div style="width: 95%">

			<!-- First Photo Grid-->
			<div class="w3-row-padding w3-padding-16 w3-center" id="food">
				<div class="w3-quarter">
					<img src="./w3images/sandwich.jpg" alt="Sandwich">
					<h3>The Perfect Sandwich, A Real NYC Classic</h3>
					<p>Just some random text, lorem ipsum text praesent tincidunt
						ipsum lipsum.</p>
				</div>
				<div class="w3-quarter">
					<img src="./w3images/steak.jpg" alt="Steak">
					<h3>Let Me Tell You About This Steak</h3>
					<p>Once again, some random text to lorem lorem lorem lorem
						ipsum text praesent tincidunt ipsum lipsum.</p>
				</div>
				<div class="w3-quarter">
					<img src="./w3images/cherries.jpg" alt="Cherries">
					<h3>Cherries, interrupted</h3>
					<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
					<p>What else?</p>
				</div>
				<div class="w3-quarter">
					<img src="./w3images/wine.jpg" alt="Pasta and Wine">
					<h3>Once Again, Robust Wine and Vegetable Pasta</h3>
					<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
				</div>
			</div>

			<!-- Second Photo Grid-->

			<div class="w3-row-padding w3-padding-16 w3-center">
				<div class="w3-quarter">
					<img src="./w3images/popsicle.jpg" alt="Popsicle">
					<h3>All I Need Is a Popsicle</h3>
					<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
				</div>
				<div class="w3-quarter">
					<img src="./w3images/salmon.jpg" alt="Salmon">
					<h3>Salmon For Your Skin</h3>
					<p>Once again, some random text to lorem lorem lorem lorem
						ipsum text praesent tincidunt ipsum lipsum.</p>
				</div>
				<div class="w3-quarter">
					<img src="./w3images/sandwich.jpg" alt="Sandwich">
					<h3>The Perfect Sandwich, A Real Classic</h3>
					<p>Just some random text, lorem ipsum text praesent tincidunt
						ipsum lipsum.</p>
				</div>
				<div class="w3-quarter">
					<img src="./w3images/croissant.jpg" alt="Croissant">
					<h3>Le French</h3>
					<p>Lorem lorem lorem lorem ipsum text praesent tincidunt ipsum
						lipsum.</p>
				</div>
			</div>

			<!-- Pagination -->

			<div class="w3-center w3-padding-32">
				<div class="w3-bar">
					<a href="#" class="w3-bar-item w3-button w3-hover-black">&laquo;</a>
					<a href="#" class="w3-bar-item w3-black w3-button">1</a> <a
						href="#" class="w3-bar-item w3-button w3-hover-black">2</a> <a
						href="#" class="w3-bar-item w3-button w3-hover-black">3</a> <a
						href="#" class="w3-bar-item w3-button w3-hover-black">4</a> <a
						href="#" class="w3-bar-item w3-button w3-hover-black">&raquo;</a>
				</div>
			</div>
			<!-- //Pagination -->
		</div>
		<!-- //!PAGE CONTENT! -->
		
		
		

		<!-- About Section -->
		<hr id="about">
		<div class="w3-container w3-padding-32 w3-center"
			style="background: url('./w3images/bg_find_yourLook.jpg');">
			<div class="w3-content">
				<h3>About Me, The Food Man</h3>
				<br> <img src="./w3images/chef.jpg" alt="Me" class="w3-image"
					style="display: block; margin: auto">
				<div class="w3-padding-32">
					<h4>
						<b>I am Who I Am!</b>
					</h4>
					<h6>
						<i>With Passion For Real, Good Food</i>
					</h6>
					<p>Just me, myself and I, exploring the universe of
						unknownment. I have a heart of love and an interest of lorem ipsum
						and mauris neque quam blog. I want to share my world with you.
						Praesent tincidunt sed tellus ut rutrum. Sed vitae justo
						condimentum, porta lectus vitae, ultricies congue gravida diam non
						fringilla. Praesent tincidunt sed tellus ut rutrum. Sed vitae
						justo condimentum, porta lectus vitae, ultricies congue gravida
						diam non fringilla.</p>
				</div>
			</div>
		</div>
		<hr>

		<!-- //About Section -->
		<!-- //!MAIN CONTENTS! -->



		<!-- Footer -->
		<footer class="w3-row-padding w3-padding-32">
		<%@ include file="/WEB-INF/include/include-footer.jspf"%>
		</footer>
		<!-- //Footer -->

	</div>
</body>
</html>