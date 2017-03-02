var pArr = [ "10", "9", "8", "7", "6", "5", "4", "3", "2", "1" ];

function rotation() {
	$("#image").rotate({
		angle : 0,
		animateTo : 360 * 5 + randomize(0, 360),
		center : [ "50%", "50%" ],
		easing : $.easing.easeInOutElastic,
		callback : function() {
			var n = $(this).getRotateAngle();
			endAnimate(n);
		},
		duration : 5000
	});
}

function endAnimate($n) {
	var n = $n;
	$('#result_id').html("<p>움직인각도:" + n + "</p>");
	var real_angle = n % 360;
	var part = Math.floor(real_angle / 36);
	$('#result_id2').html("<p>범위:" + part + "</p>");

	if (part < 1) {
		$('#result_id3').html("<p>결과:" + pArr[0] + "</p>");
		return;
	}

	if (part >= 10) {
		$('#result_id3').html("<p>결과:" + pArr[pArr.length - 1] + "</p>");
		return;
	}

	$('#result_id3').html("<p>결과:" + pArr[part] + "</p>");
}

function randomize($min, $max) {
	return Math.floor(Math.random() * ($max - $min + 1)) + $min;
}
