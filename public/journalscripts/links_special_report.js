

	var get_file_links = "../journalscripts/links_special_report.htm";

	$(document).ready(function() {
		
		$.get( get_file_links, function( data ) {
			
			$( "#render_links" ).html( data );
		});
 		
	});
