$(function() {
	$('div.product').mouseover(function() {
		$(this).find('a.info').show();
	}).mouseout(function() {
		$(this).find('a.info').hide();
	});
})
