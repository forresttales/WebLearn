

	var get_file_footer_archive = "../journalscripts/footer_archive.htm";

	$(document).ready(function() {
		
		$.get( get_file_footer_archive, function( data ) {
			
			$( "#kfooter" ).html( data );
		});
 		
	});
