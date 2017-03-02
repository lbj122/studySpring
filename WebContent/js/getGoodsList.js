define([
	'jquery',
	'handlebars'
	],function ($, a) {
	a.registerHelper('ifCond', function(v1, v2, options) {
		if (v1 === v2) {
			return options.fn(this);
		}
		return options.inverse(this);
	});
	return{
		getGoodsList : function(no){
			$(document).ready(function(){
				$.ajax({
					url : "/goodsList.do",
					type : "post",
					data : {
						no : no
					},
					success : function(result) {
						var source = $("#goods").html();
						var template = a.compile(source); 
						var data = {
						  	goods: result.goodsList
						}; 
						var html = template(data);
						$('#goodsList').html(html);
						
					},
					error : function(xhr, status, error) {
						alert("에러발생");
					}
				});
			});
		},
		getArtistList : function(){
			$(document).ready(function(){
				var artist = $("#artistData").val();
				var source = $("#artist").html();
				var template = a.compile(source);
				
				var categoryArray = new Array();
		        var categoryObj = new Object();
		        
				artist = JSON.parse(artist);
				
				for(var i = 0; i < parseInt(artist.artistList.length/10); i++){
					categoryObj.categoryNum = i;
					categoryObj.categoryId = "#"+i;
					categoryArray.push(categoryObj);
					categoryObj = new Object();
				}
				for(var i = 0; i<artist.artistList.length;i++){
					artist.artistList[i].category = parseInt(i/10);
				}
				var data = {
				  	category: categoryArray,
				  	artist: artist.artistList
				}; 
				var html = template(data);
				$('#accordian').html(html);
			});
		},
	}
});