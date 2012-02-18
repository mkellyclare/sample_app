$(document).ready(function(){
	$('#micropost_content').keyup(function (event) {
		var msg = $('#micropost_content')[0].value.length;
		var remaining = 140 - msg;
		$('#micropost_content_label').html('    ' + remaining + ' chars remaining');
	});
 });

