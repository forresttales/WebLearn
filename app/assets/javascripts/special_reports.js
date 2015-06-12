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

// var commun_registered = gon.commun_registered;
// var id_pdf = "";
// function pdf_href(id) {
// 	
	// var href = "";
	// switch (id)
	// {
	  // case '1':
	  	// href = "../pdfs/spec_report/spec-report-web.pdf";
	  	// break;
	  // // case '2':
	  	// // href = "https://business.t-mobile.com/schools-libraries-e-rate";
	  	// // break;
	  // // case '3':
	  	// // href = "http://www.hmhco.com/educators/digital-and-mobile-learning/by-platform/hmh-player?dm=136826a";
	  	// // break;
	  // case '4':
	  	// href = "../pdfs/spec_report/chicago-web.pdf";
	  	// break;
	  // case '5':
	  	// href = "../pdfs/spec_report/reconstructing-web.pdf";
	  	// break;
	  // case '6':
	  	// href = "../pdfs/spec_report/fresno-web.pdf";
	  	// break;
	  // case '7':
	  	// href = "../pdfs/spec_report/houston-web.pdf";
	  	// break;
	  // case '8':
	  	// href = "../pdfs/spec_report/model-arch-web.pdf";
	  	// break;
	  // case '9':
	  	// href = "../pdfs/spec_report/new-jersey-web.pdf";
	  	// break;
	  // case '10':
	  	// href = "../pdfs/spec_report/north-carolina-web.pdf";
	  	// break;
	  // case '11':
	  	// href = "../pdfs/spec_report/point-of-view-web.pdf";
	  	// break;
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
	// // var win_lc = window.open("http://thelearningcounsel.com/Special-Reports", '_blank');
	// var win_lc = window.open("localhost:3000/Special-Reports", '_blank');			
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
	$("#dialog_special_reports_1").focus();			
	// var int_pdf;
	// if (id_pdf == "") {
		// int_pdf = 0;
	// }
	// else {
		// int_pdf = id_pdf.substring(4, id_pdf.length);			
	// }
	// var href = pdf_href(int_pdf);
	var input_dl_email = $("#dl_email").val();
	var obj_list = '{"email":"' + input_dl_email +
				   '"}';      
	
	// var input_rd_win = $("input:radio[name=rd_win]:checked").val();
	// var input_rd_win = 1;
	// var obj_list = '{' + 
					// '"email":"' + input_dl_email +
					// '", "int_pdf":' + parseInt(int_pdf) +
					// ', "rd_win":' + parseInt(input_rd_win) + 								 
				   // '}';      
  	var obj = '{ "dl_contact": [' +  obj_list + '] }';                  
  	$.ajax({
    	type: 'POST',
    	data : obj,
    	url: 'special_reports/search_contact',			    	
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
        		else {
        			renderDownloadMsgFree();
        		}
    		}
    		else {
    			var msg = "We are sorry.\n" + data.email + "\nwas not found in our Community Registration.";
    			// renderDownloadMsgRegister();
    			alert(msg);
    		}
    	},
    	error: function(xhr){  alert("error: " + xhr.statusText); }        
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


$(window).load( function() {
//$(document).ready(function(){

	// alert(gon.commun_registered);

	b_reg_commun_confirmed = gon.reg_commun_confirmed;

	$("div.record-hit").on('click', function(event) {
		var b_gated = $(this).hasClass("gated");
		href = $(this).data("href");
		record_hit_id = $(this).data("record-hit-id");
		if(b_gated) {
			if(!b_reg_commun_confirmed) {
				$('#dialog_special_reports_1').jqmShow();
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

	// $("a").on('click', function(event) {
		// // event.preventDefault(event);
		// alert('a');
		// return false;	
	// });
	
    // $("a").on("contextmenu", function() {
       // return false;
    // }); 		
	// $("a.record-hit").on('click', function(event) {
		// // e.preventDefault();	
		// // alert(b_reg_commun_confirmed);
		// var b_gated = $(this).hasClass("gated");
		// if(b_gated) {
			// if(!b_reg_commun_confirmed) {
				// // event.preventDefault(event);	
				// href = $(this).attr("href");
				// record_hit_id = $(this).data("record-hit-id");
				// $('#dialog_special_reports_1').jqmShow();
				// return false;
			// }
			// else {
				// recordHit($(this).data("record-hit-id"));
				// alert('click');
				// return true;
			// }
		// }
		// else {
			// recordHit($(this).data("record-hit-id"));
			// return true;
		// }
	// });



	// if (commun_registered) {
	if (b_reg_commun_confirmed) {
		renderDownloadMsgFree();
	}
	else {
		renderDownloadMsgRegister();
	}
	
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

	// $(".jqModal-test").on('click', function() {
		// id_pdf = $(this).attr('id');
		// if (commun_registered) {
			// openHREF(pdf_href(id_pdf));
		// }
		// else {
			// $('#dialog_special_reports_1').show();
		// }
	// });

    $('#dialog_special_reports_1').jqm({
    	trigger : 'show_modal'
        // overlay : 100%,
        // modal : false
    });

	$(document).on('click', '#commun_reg_confirm', function() {
		// id_pdf = "";
		btn_register = false;
		$('#dialog_special_reports_1').jqmShow();
	});

	// $(".jqModal").on('click', function() {
		// id_pdf = $(this).attr('id');
		// var int_pdf = id_pdf.substring(4, id_pdf.length);
		// var href = pdf_href(int_pdf);
		// if (commun_registered) {
			// openHREF(href);
		// }	
		// else {
			// $('#dialog_special_reports_1').jqmShow();
		// }	
	// });

	$('#dialog_special_reports_1').jqm({
		onShow: function(hash) {
			form_init();
			hash.o.prependTo('body');
			hash.w.css('top', '-360px');
			hash.w.css('opacity', 1.0).fadeIn(100);
			// hash.w.show();
			$('#dialog_special_reports_1').animate(
				{bottom:'-=400', top:'+=400'}, 
				200, 
				'easeInOutCirc', 
				function() {
					$('#dialog_special_reports_1').animate(
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

