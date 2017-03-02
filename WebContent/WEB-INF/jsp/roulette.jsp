<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	#image{
	  margin:50px 50px;z-index:10;
	}
	#n_id{position:relative;left:-257px;top:-180px;z-index:20;}
</style>

	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<img src="images/roulette.png" id="image"> 
				<img src="images/choice.png" id="n_id">
				<br /> <br />
				<input type='button' value='시작!' id='start_btn' onclick='javascript:rotation()'></input>
				<div id="result_id"></div>
				<div id="result_id2"></div>
				<div id="result_id3"></div>
			</div>
		</div>
	</div>
	<br /><br />
	<script data-main="/js/roulette" src="/js/common/require.js"></script>
<!-- <script>
/* serpiko.tistory.com */
window.onload = function(){
     
    var pArr = ["10","9","8","7","6","5","4","3","2","1"];
 
    $('#start_btn').click(function(){
        rotation();
    });
 
    function rotation(){
        $("#image").rotate({
          angle:0, 
          animateTo:360 * 5 + randomize(0, 360),
          center: ["50%", "50%"],
          easing: $.easing.easeInOutElastic,
          callback: function(){ 
                        var n = $(this).getRotateAngle();
                        endAnimate(n);
                    },
          duration:5000
       });
    }
	    
    function endAnimate($n){
        var n = $n;
        $('#result_id').html("<p>움직인각도:" + n + "</p>");
        var real_angle = n%360;
        var part = Math.floor(real_angle/36);
        $('#result_id2').html("<p>범위:" + part + "</p>");
 
        if(part < 1){
            $('#result_id3').html("<p>결과:" + pArr[0] + "</p>");
            return;
        }
 
        if(part >= 10){
            $('#result_id3').html("<p>결과:" + pArr[pArr.length-1] + "</p>");
            return;
        }
 
        $('#result_id3').html("<p>결과:" + pArr[part] + "</p>");
    }
 
    function randomize($min, $max){
        return Math.floor(Math.random() * ($max - $min + 1)) + $min;
    }
};
</script> -->