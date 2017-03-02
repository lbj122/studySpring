<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<%
	String artistList = (String)request.getAttribute("artist"); 
%>
<input type='hidden' value = '<%=artistList %>' id='artistData'>
<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="left-sidebar">
					<h2>Category</h2>
					<div class="panel-group category-products" id="accordian">
						<script id="artist" type="text/x-handlebars-template">
						{{#each category}}
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian"
										href="{{categoryId}}"> <span class="badge pull-right"><i
											class="fa fa-plus"></i></span> {{categoryNum}}
									</a>
								</h4>
							</div>
							<div id="{{categoryNum}}" class="panel-collapse collapse">
								<div class="panel-body">
									<ul>
										{{#each ../artist}}
											{{#ifCond category ../categoryNum}}
												<li><a href=javascript:getGoodsList({{ARTIST_NO}})>{{ARTIST_NM}}</a></li>
											{{/ifCond}}
										{{/each}}
									</ul>
								</div>
							</div>
						</div>
						{{/each}}
						</script>
					</div>
					<!--/category-products-->
				</div>
			</div>

			<div class="col-sm-9 padding-right">
				<div class="features_items"	>
					<!--features_items-->
					<h2 class="title text-center">Features Items</h2>
					<script id="goods" type="text/x-handlebars-template">
					{{#goods}}
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/home/product1.jpg" alt="" />
									<h2>{{GOOD_NM}}</h2>
									<p>{{GOOD_NO}}</p>
									<p>{{ARTIST_NM}}</p>
									<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>{{GOOD_NM}}</h2>
										<p>{{GOOD_NO}}</p>
										<p>{{ARTIST_NM}}</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
								<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
								<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
							</div>
						</div>
					</div>
					{{/goods}}
					</script>
					<div id="goodsList">
					
					</div>

				</div>
				<!--features_items-->
			</div>
		</div>
	</div>
</section>
<script data-main="/js/goods" src="/js/common/require.js"></script>