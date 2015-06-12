function formValidate() {
	
	$("#form_pdf").validate({
	
		submitHandler: function(form) {
			submit_dl_pdf();
		},
		debug: true,
		onkeyup: false,
		focusCleanup: true,
		focusInvalid: false,
		rules: {
			'dl[email]': {
				required: true,
				maxlength: 100,
				email: true
			}					
		},
		invalidHandler: function(validator) {
		},				
		messages: {
			'dl[email]': {
				required: "Required",
				maxlength: "Exceeds 100 characters",
				email: "Invalid email"
			}					
		},
		errorContainer: $("div .error-div"),				
		errorPlacement: function(error, element) {
			error.insertAfter('#error_' + element.attr('id') + " span");
		},
		error: function(label) {
			$('#error_' + label.attr('for')).addClass('check-required');
		},
		success: function(label) {
			$('#error_' + label.attr('for')).removeClass('check-required').html("<span></span>");
		},				
		focus: function(element) {
		}
	});
}

// var id_pdf = "";

// function pdf_href(id) {
// 	
	// var href = "";
	// switch (id)
	// {
	  // case '1':
	  	// href = "../pdfs/Digital-Curriculum-Strategy-Brief.pdf";
	  	// break;
	  // // case '2':
	  	// // href = "http://education.i2i.org/wp-content/uploads/2014/07/IP_2_2014_web_b.pdf";
	  	// // break;
	  // // case '3':
	  	// // href = "https://s3.amazonaws.com/MHE_Social_Media/Whitepapers/District_Digital_Conversion_whitepaper_WEB_06162014.pdf";
	  	// // break;
	  // // case '4':
	  	// // href = "../pdfs/Case-Study-Burbank-2013.pdf";
	  	// // break;
	  // // case '5':
	  	// // href = "../pdfs/Case-Study-Marquez-2013.pdf";
	  	// // break;
	  // // case '6':
	  	// // href = "../pdfs/Model-Innovation-City-Case-Study-Final.pdf";
	  	// // break;
	  // // case '7':
	  	// // href = "../pdfs/Touro-University-FINAL.pdf";
	  	// // break;
	  // // case '8':
	  	// // href = "../pdfs/ConceptuaMath-case-study_Mequon.pdf";
	  	// // break;
	  // // case '9':
	  	// // href = "../pdfs/ConceptuaMath-case-study-SunnysideUSD.pdf";
	  	// // break;
	  // // case '10':
	  	// // href = "../pdfs/STEM-U.pdf";
	  	// // break;
	  // // case '11':
	  	// // href = "../pdfs/cengage.pdf";
	  	// // break;
	  // // case '12':
	  	// // href = "../pdfs/Digital-Curriculum-Strategy-Brief-2.pdf";
	  	// // break;
		// case '13':
	  	// href = "../pdfs/Netop-Brief-R4.pdf";
	  	// break;
	  // // case '14':
	  	// // href = "http://www2.dreambox.com/l/14872/2015-04-06/58gslh";
	  	// // break;
	  // default:
	  // //
	// }
	// return href;
// }

function openHREF(href) {
	// window.open(href);
    window.location.href = href;			
}		
// function openHREF_new_win(href) {
	// // var win = window.open(href, '_blank');
	// // win.focus();
	// // var win_lc = window.open("http://localhost:3000/Papers", '_blank');
	// var win_lc = window.open("http://thelearningcounsel.com/Papers", '_blank');			
	// var win = window.location.href = href;
	// // win.focus();
// }		
function form_pdf_close() {
	$("#close_form1").trigger('click');
}


var b_reg_commun_confirmed;
var href;
var record_hit_id;
var btn_register = false;

function submit_dl_pdf() {
	
	$("#close_form1").blur();
	$("#dialog_papers_1").focus();			
	
	// var int_pdf = id_pdf.substring(4, id_pdf.length);
	// var href = pdf_href(int_pdf);
	var input_dl_email = $("#dl_email").val();
	// var input_rd_win = $("input:radio[name=rd_win]:checked").val();	
	// var input_rd_win = 1;
	// var obj_list = '{' + 
					// '"email":"' + input_dl_email +
					// '", "int_pdf":' + parseInt(int_pdf) +
					// ', "rd_win":' + input_rd_win + 								 
				   // '}';      
	var obj_list = '{"email":"' + input_dl_email +
				   '"}';      

  	var obj = '{ "dl_contact": [' +  obj_list + '] }';                  
  	$.ajax({
    	type: 'POST',
    	data : obj,
    	url: 'papers/search_contact',			    	
    	dataType: "json",
    	contentType: "application/json",
    	processData: false,
    	beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
    	statusCode: {
        	// 200:function() { alert("200"); },
    	},
    	success: function(data) {
    		if( data.b_reg_commun_record) {
    			b_reg_commun_confirmed = true;
        		form_pdf_close();
        		if(btn_register) {
	    			recordHit(record_hit_id);
	        		openHREF(href);
        		}
    		}
    		else {
    			var msg = "We are sorry.\n" + data.email + "\nwas not found in our Community Registration.";
    			alert(msg);
    		}
    	},
    	error: function(xhr){  alert("submit error: " + xhr.statusText); }        
  	});
  			  	
	return false;
}

function form_init() {
	$("#dl_email").val('');
	$("#error_dl_email").html("<span></span>");			
	set_rd_1();
	unset_rd_2();
}
function set_rd_1() {
	var rd ="#rd_win_same";
	var sd = "#div_rd_win_same";
	$(rd).prop('checked',true);
	$(sd).addClass("rd-background");			
}
function unset_rd_1() {
	var sd = "#div_rd_win_same";
	$(sd).removeClass("rd-background");			
}
function set_rd_2() {
	var rd ="#rd_win_new";
	var sd = "#div_rd_win_new";
	$(rd).prop('checked',true);
	$(sd).addClass("rd-background");			
}
function unset_rd_2() {
	var sd = "#div_rd_win_new";
	$(sd).removeClass("rd-background");			
}
function set_rd(caller) {
	switch (caller)
	{
	  case 'same':
	  		set_rd_1();
	  		unset_rd_2();
	  	break;
	  case 'new':
	  		set_rd_2();
	  		unset_rd_1();
	  	break;
	  default:
	  //
	}
}

function recordHit(record_hit_id) {
	
	var obj_list = '{"record_hit_id":' + record_hit_id + 								 
				   '}';      
  	var obj = '{ "hit_count": [' +  obj_list + '] }';                  
  	$.ajax({
    	type: 'POST',
    	data : obj,
    	url: 'hit_counts/create_hit',			    	
    	// dataType: "json",
    	dataType: "script",
    	contentType: "application/json",
    	processData: false,
    	async: false,
    	beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
    	statusCode: {
    	},
    	success: function(data) {
    		// alert('success');
    	},
    	error: function(xhr){  alert("recordHit error: " + xhr.statusText); }        
  	});
  			  	
	return false;
}

// function gateModal() {
	// $('#dialog_papers_1').jqmShow();
	// // id_pdf = $(this).attr('id');
	// // var int_pdf = id_pdf.substring(4, id_pdf.length);
	// // var href = pdf_href(int_pdf);
	// // if (commun_registered) {
		// // openHREF(href);
	// // }	
	// // else {
		// // $('#dialog_papers_1').jqmShow();
	// // }	
// }


$(window).load( function() {
//$(document).ready(function(){

	
	b_reg_commun_confirmed = gon.reg_commun_confirmed;

	$("div.record-hit").on('click', function(event) {
		var b_gated = $(this).hasClass("gated");
		href = $(this).data("href");
		record_hit_id = $(this).data("record-hit-id");
		if(b_gated) {
			if(!b_reg_commun_confirmed) {
				$('#dialog_papers_1').jqmShow();
			}
			else {
				recordHit(record_hit_id);
				openHREF(href);
			}
		}
		else {
			recordHit(record_hit_id);
			openHREF(href);
		}
		btn_register = true;
	});
	
	// $(".record-hit").on('click', function(e) {
		// // e.preventDefault();	
		// // alert(b_reg_commun_confirmed);
		// var b_gated = $(this).hasClass("gated");
		// if(b_gated) {
			// if(!b_reg_commun_confirmed) {
				// e.preventDefault();	
				// href = $(this).attr("href");
				// record_hit_id = $(this).data("record-hit-id");
				// $('#dialog_papers_1').jqmShow();
			// }
			// else {
				// recordHit($(this).data("record-hit-id"));
			// }
		// }
		// else {
			// recordHit($(this).data("record-hit-id"));
		// }
	// });
	
	
	// $(".record-hit").on('click', function() {
		// var record_hit_id = $(this).data("record-hit-id");
		// var b_gated = $(this).data("gated");
		// if(b_gated) {
			// if(commun_registered) {
				// gateModal();	
			// }
		// }
		// else {
			// recordHit(record_hit_id);			
		// }
	// });


	formValidate();		

	$("#div_rd_win_same").keypress(function(e){
		if(e.keyCode==13)
		$("#div_rd_win_same").click();
	});							
	$("#div_rd_win_new").keypress(function(e){
		if(e.keyCode==13)
		$("#div_rd_win_new").click();
	});							
	$("#label_rd_win_same").keypress(function(e){
		if(e.keyCode==13)
		$("#label_rd_win_same").click();
	});							
	$("#label_rd_win_new").keypress(function(e){
		if(e.keyCode==13)
		$("#label_rd_win_new").click();
	});									
	$('#div_rd_win_same').on('click', function() {
		set_rd('same');
	});
	$('#div_rd_win_new').on('click', function() {
		set_rd('new');
	});
	$('#label_rd_win_same').on('click', function() {
		set_rd('same');
	});
	$('#label_rd_win_new').on('click', function() {
		set_rd('new');
	});

	// $(document).on("click", ".jqModal-1", function() {
		// alert('jqModal-1');
		// var idpdf = $(this).attr('id');
		// var int_pdf = idpdf.substring(4, idpdf.length);
		// alert(int_pdf);
		// var href = pdf_href(int_pdf);
		// alert(href);
		// // pdf_href(id);
		// openHREF(href);
	// });

	// $(".jqModal").on('click', function() {
		// id_pdf = $(this).attr('id');
	// });
	// $('#dialog_papers_1').jqm({
		// onShow: function(hash) {
			// form_init();
			// hash.o.prependTo('body');
			// hash.w.css('top', '-360px');
			// hash.w.css('opacity', 1.0).fadeIn(200);
			// // hash.w.show();
			// $('#dialog_papers_1').animate(
				// {bottom:'-=400', top:'+=400'}, 
				// 500, 
				// 'easeInOutCirc', 
				// function() {
					// $('#dialog_papers_1').animate(
						// {bottom:'+=4', top:'-=4'}, 
						// 100, 
						// 'easeInBounce', 
						// function() {
						// }
					// );
					// $('#dl_email').focus();
				// }
			// );
		// }
	// }); 		

    $('#dialog_papers_1').jqm({
    	trigger : 'show_modal'
        // overlay : 100%,
        // modal : false
    });

	$(document).on('click', '#commun_reg_confirm', function() {
		btn_register = false;
		$('#dialog_papers_1').jqmShow();
	});

	// $(".jqModal").on('click', function() {
		// id_pdf = $(this).attr('id');
		// var int_pdf = id_pdf.substring(4, id_pdf.length);
		// var href = pdf_href(int_pdf);
		// if (commun_registered) {
			// openHREF(href);
		// }	
		// else {
			// $('#dialog_papers_1').jqmShow();
		// }	
	// });

	$('#dialog_papers_1').jqm({
		onShow: function(hash) {
			form_init();
			hash.o.prependTo('body');
			hash.w.css('top', '-360px');
			hash.w.css('opacity', 1.0).fadeIn(100);
			// hash.w.show();
			$('#dialog_papers_1').animate(
				{bottom:'-=400', top:'+=400'}, 
				200, 
				'easeInOutCirc', 
				function() {
					$('#dialog_papers_1').animate(
						{bottom:'+=4', top:'-=4'}, 
						100, 
						'easeInBounce', 
						function() {
						}
					);
					$('#dl_email').focus();
				}
			);
		}
	}); 		

});

