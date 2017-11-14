<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<!-- Header -->

	<%@ include file="/WEB-INF/include/include-bodyHeader.jspf"%>
	<!-- 전체 div 잡아서 크기 조절 -->
	<div class="wrap" style="max-width: 100%; margin: 0; padding: 0;">



		<!-- !MAIN CONTENTS! -->
		<!-- SlideShow -->
		<div class="w3-display-container" style="width: 100%">
			<img class="mySlides" src="./w3images/20171101172031244.jpg" style="width: 100%"> 
			<img class="mySlides"src="./w3images/20171108105539245.jpg" style="width: 100%"> 
			<img class="mySlides" src="./w3images/20171101172355313.jpg" style="width: 100%">
			
			<div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width: 100%">
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

		<div class="mall-content">

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
			<div class="mall-content">
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
		<%@ include file="/WEB-INF/include/include-footer.jspf"%>
		<!-- //Footer -->
	</div>


	<script type="text/javascript">
		//  ------------------------SlideShow script------------------------
		var slideIndex = 1;
		showDivs(slideIndex);
		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function currentDiv(n) {
			showDivs(slideIndex = n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-white", "");
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-white";
		}
	</script>


</body>
</html>