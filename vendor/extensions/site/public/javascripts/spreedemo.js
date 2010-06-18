jQuery(document).ready(function($){
	$('div.product div.img').hover(function() {
    $('div.product div.img').css({ opacity: 1.0 });
		$(this).animate({ opacity: 0.1 });
	}).mouseout(function() {
		$(this).css({ opacity : 1.0 }); 
	});
});
