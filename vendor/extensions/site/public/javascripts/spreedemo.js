jQuery(document).ready(function($){
	$('div.product div.img').hover(function() {
		$(this).animate({ opacity: 0.0 }); //hide(); //fadeOut();
	}).mouseout(function() {
		$(this).css({ opacity : 1.0 }); 
	});
});
