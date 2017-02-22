<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<%
	List<Map<String, Object>> artistList = (List<Map<String, Object>>)request.getAttribute("artistList"); 
%>

<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="left-sidebar">
					<h2>Category</h2>
					<div class="panel-group category-products" id="accordian">
						<!--category-productsr-->
						<!-- <div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian"
										href="#sportswear"> <span class="badge pull-right"><i
											class="fa fa-plus"></i></span> Sportswear
									</a>
								</h4>
							</div>
							<div id="sportswear" class="panel-collapse collapse">
								<div class="panel-body">
									<ul>
										<li><a href="#">Nike </a></li>
										<li><a href="#">Under Armour </a></li>
										<li><a href="#">Adidas </a></li>
										<li><a href="#">Puma</a></li>
										<li><a href="#">ASICS </a></li>
									</ul>
								</div>
							</div>
						</div> -->
<%
if(null != artistList){
	for(int i = 0; i < artistList.size(); i++){
%>						
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href=javascript:getGoodsList(<%=artistList.get(i).get("ARTIST_NO") %>)><%=artistList.get(i).get("ARTIST_NM") %></a>
								</h4>
							</div>
						</div>
<%
	}
}
%>
					</div>
					<!--/category-products-->
				</div>
			</div>

			<div class="col-sm-9 padding-right">
				<div class="features_items"	>
					<!--features_items-->
					<h2 class="title text-center">Features Items</h2>
					<div id="goodsList">
					</div>

				</div>
				<!--features_items-->
			</div>
		</div>
	</div>
</section>

<script>
function getGoodsList(no){
	$.ajax({
		url : "/goodsList.do",
		type : "post",
		data : {
			no : no
		},
		success : function(result) {
			var goodsList = result.goodsList;
			var html = "";
			var goodsNM = "";
			var length = goodsList.length;
			if(length > 12){
				length = 12
			}
			for(var i = 0; i<length; i++){
				if(goodsList[i].GOOD_NM != null){
					goodsNM = goodsList[i].GOOD_NM;
					if(goodsNM.length > 10){
						goodsNM = goodsNM.substring(0,9) +"...";	
					}
				}
				html += '<div class="col-sm-4">';
				html += '<div class="product-image-wrapper">';
				html += '<div class="single-products">';
				html += '<div class="productinfo text-center">';
				html += '<img src="images/home/product1.jpg" alt="" />';
				html += '<h2>'+goodsNM+'</h2>';
				html += '<p>'+goodsList[i].GOOD_NO+'</p>';
				html += '<p>'+goodsList[i].ARTIST_NM+'</p>';
				html += '<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>';
				html += '</div>';
				html += '<div class="product-overlay">';
				html += '<div class="overlay-content">';
				html += '<h2>'+goodsNM+'</h2>';
				html += '<p>'+goodsList[i].GOOD_NO+'</p>';
				html += '<p>'+goodsList[i].ARTIST_NM+'</p>';
				html += '<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>';
				html += '</div>';
				html += '</div>';
				html += '</div>';
				html += '<div class="choose">';
				html += '<ul class="nav nav-pills nav-justified">';
				html += '<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>';
				html += '<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>';
				html += '</ul>';
				html += '</div>';
				html += '</div>';
				html += '</div>';
			}
			html += "</table>";
			$("#goodsList").html(html);
		},
		error : function(xhr, status, error) {
			alert("에러발생");
		}
	});	
}

</script>	