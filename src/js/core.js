(function (w, jq) {
	jq(function () {
		
		var $body = jq("body");
		
		$body.on("click", "span.youtube", function(evt) {
			jq(evt.currentTarget).css({ "filter", "blur(0)" });
		});
			
	});
}(this, jQuery));