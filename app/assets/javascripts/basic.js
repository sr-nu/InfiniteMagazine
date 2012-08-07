(function($) {

var container = $('<div />', {css: {margin: 'auto', width:400, height:300} })
	.appendTo($('#sample-viewer'));

	$('<div />', {'class': 'sample-flipbook'})
		.appendTo(container)
		.html(
			'<div class="hard"> Turn.js </div>' +
			'<div class="hard"></div>' +
			'<div>Page 1</div>' +
			'<div>Page 2</div>' +
			'<div>Page 3</div>' +
			'<div>Page 4</div>' +
			'<div class="hard"></div>' +
			'<div class="hard"></div>'
		);

// Wait until it renders
	
$('.sample-flipbook').turn({
	width:400,
	height:300,
	autoCenter: true,
	shadows: $.isTouch,
	acceleration: $.isTouch
});



})(jQuery);