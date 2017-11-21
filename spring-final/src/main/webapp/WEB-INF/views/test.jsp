<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
					<%@include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
					<!-- header -->
					<%@include file="/WEB-INF/include/include-bodyHeader.jspf" %>	
						<!-- //header -->
<!-- single -->
	<div class="single">
		<div class="container">
			<div class="col-md-4 single-left">
				<div class="flexslider">
					<ul class="slides">
						<li data-thumb="${pageContext.request.contextPath}/images/test/a.jpg">
							<div class="thumb-image"> <img src="${pageContext.request.contextPath}/images/test/a.jpg" data-imagezoom="true" class="img-responsive"> </div>
						</li>
						<li data-thumb="${pageContext.request.contextPath}/images/test/b.jpg">
							 <div class="thumb-image"> <img src="${pageContext.request.contextPath}/images/test/b.jpg" data-imagezoom="true" class="img-responsive"> </div>
						</li>
						<li data-thumb="${pageContext.request.contextPath}/images/test/c.jpg">
						   <div class="thumb-image"> <img src="${pageContext.request.contextPath}/images/test/c.jpg" data-imagezoom="true" class="img-responsive"> </div>
						</li> 
					</ul>
				</div>
				<!-- flixslider -->
					<script defer src="${pageContext.request.contextPath}/javascripts/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/flexslider.css" type="text/css" media="screen" />
					<script>
					// Can also be used with $(document).ready()
					$(window).load(function() {
					  $('.flexslider').flexslider({
						animation: "slide",
						controlNav: "thumbnails"
					  });
					});
					</script>
				<!-- flixslider -->
				<!-- zooming-effect -->
					<script src="${pageContext.request.contextPath}/javascripts/imagezoom.js"></script>
				<!-- //zooming-effect -->
			</div>
			<div class="col-md-8 single-right">
				<h3>Swan Miami Red Skirt</h3>
				<div class="rating1">
					<span class="starRating">
						<input id="rating5" type="radio" name="rating" value="5">
						<label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating" value="4">
						<label for="rating4">4</label>
						<input id="rating3" type="radio" name="rating" value="3" checked>
						<label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label>
						<input id="rating1" type="radio" name="rating" value="1">
						<label for="rating1">1</label>
					</span>
				</div>
					<div class="description">
						<h5><i>Description</i></h5>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
							eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.
							Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut 
							odit aut fugit, sed quia consequuntur magni dolores eos qui 
							ratione voluptatem sequi nesciunt.</p>
					</div>
					<div class="color-quality">
						<div class="color-quality-left">
							<h5>Color : </h5>
							<ul>
								<li><a href="#"><span></span>Red</a></li>
								<li><a href="#" class="brown"><span></span>Yellow</a></li>
								<li><a href="#" class="purple"><span></span>Purple</a></li>
								<li><a href="#" class="gray"><span></span>Violet</a></li>
							</ul>
						</div>
						<div class="color-quality-right">
							<h5>Quality :</h5>
							 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus1">&nbsp;</div>
									<div class="entry value1"><span>1</span></div>
									<div class="entry value-plus1 active">&nbsp;</div>
								</div>
							</div>
							<!--quantity-->
									<script>
									$('.value-plus1').on('click', function(){
										var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
									});

									$('.value-minus1').on('click', function(){
										var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1) divUpd.text(newVal);
									});
									</script>
								<!--quantity-->

						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="occasional">
						<h5>Occasion :</h5>
						<div class="colr ert">
							<div class="check">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Occasion Wear</label>
							</div>
						</div>
						<div class="colr">
							<div class="check">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>Party Wear</label>
							</div>
						</div>
						<div class="colr">
							<div class="check">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>Formal Wear</label>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="simpleCart_shelfItem">
							<p><span>$320</span> <i class="item_price">$250</i></p>
							<p><a class="item_add" href="#">Add to cart</a></p>
						</div>

			</div>
			<div class="clearfix"> </div>
		</div>
	</div>

	<div class="additional_info">
		<div class="container">
			<div class="sap_tabs">	
				<div id="horizontalTab1" style="display: block; width: 100%; margin: 0px;">
					<ul>
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Product Information</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Reviews</span></li>
					</ul>		
					<div class="tab-1 resp-tab-content additional_info_grid" aria-labelledby="tab_item-0">
						<h3>Swan Miami Red Skirt</h3>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
							eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.
							Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut 
							odit aut fugit, sed quia consequuntur magni dolores eos qui 
							ratione voluptatem sequi nesciunt.Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea 
							commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate 
							velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat 
							quo voluptas nulla pariatur.</p>
					</div>	

					<div class="tab-2 resp-tab-content additional_info_grid" aria-labelledby="tab_item-1">
						<h4>(2) Reviews</h4>
						<div class="additional_info_sub_grids">
							<div class="col-xs-2 additional_info_sub_grid_left">
								<img src="${pageContext.request.contextPath}/images/test/1.png" alt=" " class="img-responsive" />
							</div>
							<div class="col-xs-10 additional_info_sub_grid_right">
								<div class="additional_info_sub_grid_rightl">
									<a href="single.html">Laura</a>
									<h5>April 03, 2016.</h5>
									<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
										velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat 
										quo voluptas nulla pariatur.</p>
								</div>
								<div class="additional_info_sub_grid_rightr">
									<div class="rating">
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="additional_info_sub_grids">
							<div class="col-xs-2 additional_info_sub_grid_left">
								<img src="${pageContext.request.contextPath}/images/test/2.png" alt=" " class="img-responsive" />
							</div>
							<div class="col-xs-10 additional_info_sub_grid_right">
								<div class="additional_info_sub_grid_rightl">
									<a href="single.html">Michael</a>
									<h5>April 04, 2016.</h5>
									<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
										velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat 
										quo voluptas nulla pariatur.</p>
								</div>
								<div class="additional_info_sub_grid_rightr">
									<div class="rating">
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="review_grids">
							<h5>Add A Review</h5>
							<form action="#" method="post">
								<input type="text" name="Name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
								<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
								<input type="text" name="Telephone" value="Telephone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone';}" required="">
								<textarea name="Review" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Add Your Review';}" required="">Add Your Review</textarea>
								<input type="submit" value="Submit" >
							</form>
						</div>
					</div> 			        					            	      
				</div>	
			</div>
			<script src="${pageContext.request.contextPath}/javascripts/easyResponsiveTabs.js" type="text/javascript"></script>
			<script type="text/javascript">
				$(document).ready(function () {
					$('#horizontalTab1').easyResponsiveTabs({
						type: 'default', //Types: default, vertical, accordion           
						width: 'auto', //auto or any width like 600px
						fit: true   // 100% fit in a container
					});
				});
			</script>
		</div>
	</div>
	<div class="w3l_related_products">
		<div class="container">
			<h3>Related Products</h3>
			<ul id="flexiselDemo2">			
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="${pageContext.request.contextPath}/images/test/ss1.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss2.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss3.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss4.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss5.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss6.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss7.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss8.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="single.html">Pink Flared Skirt</a></h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart"><span>$312</span> <i class="item_price">$212</i></p>
								<p><a class="item_add" href="#">Add to cart</a></p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="${pageContext.request.contextPath}/images/test/ss2.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss3.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss4.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss5.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss6.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss9.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss7.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss8.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="single.html">Red Pencil Skirt</a></h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart"><span>$432</span> <i class="item_price">$323</i></p>
								<p><a class="item_add" href="#">Add to cart</a></p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="${pageContext.request.contextPath}/images/test/ss3.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss4.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss5.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss6.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss7.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss8.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss9.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss1.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="single.html">Yellow Cotton Skirt</a></h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart"><span>$323</span> <i class="item_price">$310</i></p>
								<p><a class="item_add" href="#">Add to cart</a></p>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3l_related_products_grid">
						<div class="agile_ecommerce_tab_left dresses_grid">
							<div class="hs-wrapper hs-wrapper3">
								<img src="${pageContext.request.contextPath}/images/test/ss4.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss5.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss6.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss7.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss8.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss9.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss1.jpg" alt=" " class="img-responsive">
								<img src="${pageContext.request.contextPath}/images/test/ss2.jpg" alt=" " class="img-responsive">
								<div class="w3_hs_bottom">
									<div class="flex_ecommerce">
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</div>
								</div>
							</div>
							<h5><a href="single.html">Black Short</a></h5>
							<div class="simpleCart_shelfItem">
								<p class="flexisel_ecommerce_cart"><span>$256</span> <i class="item_price">$200</i></p>
								<p><a class="item_add" href="#">Add to cart</a></p>
							</div>
						</div>
					</div>
				</li>
			</ul>
				<script type="text/javascript">
					$(window).load(function() {
						$("#flexiselDemo2").flexisel({
							visibleItems:4,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: { 
								portrait: { 
									changePoint:480,
									visibleItems: 1
								}, 
								landscape: { 
									changePoint:640,
									visibleItems:2
								},
								tablet: { 
									changePoint:768,
									visibleItems: 3
								}
							}
						});
						
					});
				</script>
				<script type="text/javascript" src="${pageContext.request.contextPath}/javascripts/jquery.flexisel.js"></script>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="${pageContext.request.contextPath}/images/test/39.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="col-md-7 modal_body_right">
							<h4>a good look women's Long Skirt</h4>
							<p>Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea 
								commodo consequat.Duis aute irure dolor in 
								reprehenderit in voluptate velit esse cillum dolore 
								eu fugiat nulla pariatur. Excepteur sint occaecat 
								cupidatat non proident, sunt in culpa qui officia 
								deserunt mollit anim id est laborum.</p>
							<div class="rating">
								<div class="rating-left">
									<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="${pageContext.request.contextPath}/images/test/star-.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="rating-left">
									<img src="${pageContext.request.contextPath}/images/test/star.png" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="modal_body_right_cart simpleCart_shelfItem">
								<p><span>$320</span> <i class="item_price">$250</i></p>
								<p><a class="item_add" href="#">Add to cart</a></p>
							</div>
							<h5>Color</h5>
							<div class="color-quality">
								<ul>
									<li><a href="#"><span></span>Red</a></li>
									<li><a href="#" class="brown"><span></span>Yellow</a></li>
									<li><a href="#" class="purple"><span></span>Purple</a></li>
									<li><a href="#" class="gray"><span></span>Violet</a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
<!-- //single -->

					<!-- footer -->
					<%@include file="/WEB-INF/include/include-footer.jspf" %>
					<!-- //footer -->
</body>
</html>