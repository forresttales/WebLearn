

	var get_file_ad = "../journal/running_ad.htm";

	$(document).ready(function() {
		
		$.get( get_file_ad, function( data ) {
			
			$( "#render_ad" ).html( data );
		});
 		
	});
