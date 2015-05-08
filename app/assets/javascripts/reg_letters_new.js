function scrollToAnchor(aid) {
	//var a = $("a[name='" + aid + "']");
	$('html, body').animate({ scrollTop: /*a.offset().top*/ $("#form_reg_letter").offset().top - 100 }, 1000);
}

//var validatorCalled = false;
//var val = null;

function formValidate() {
	$("#form_letter").validate({

		submitHandler: function(form) {
			//validatorCalled = true;
			form.submit();
		},
		debug: true,
		onkeyup: false,
		focusCleanup: true,
    	focusInvalid: false,
    	rules: {
	      'reg_letter[name_first]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 100            
	      },
	      'reg_letter[name_last]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 100            
	      },
	      'reg_letter[name_title]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 200            
	      },
	      'reg_letter[name_affiliation]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 100            
	      },
	      'reg_letter[pub_priv]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 100            
	      },
	      'reg_letter[address]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 100            
	      },
	      'reg_letter[city]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 100            
	      },
	      'reg_letter[state]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 50           
	      },
	      'reg_letter[zip]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 50           
	      },
	      'reg_letter[country]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 50           
	      },
	      'reg_letter[phone]': {
	        required: true,
	        minlength: 1,           
	        maxlength: 50           
	      },        
	      'reg_letter[email]': {
	        required: true,
	        maxlength: 100,
	        email: true
	      }
    	},
    	invalidHandler: function(event, validator) {
    		//val = validator;
    		var errors = validator.numberOfInvalids();
    		//validatorCalled = true;

    		if (errors) {
    			var message = errors == 1
		        // ? '1 required field missed'
		        // : errors + ' required fields missed';
		        ? '* Required field(s) missed'
		        : '* Required field(s) missed';           
		        $("div.errors p").html(message);
		        $("div.errors").show();
		        $("#btn_submit").blur();
		        $("#form_reg_letter").focus();   
		        scrollToAnchor('anchor1');                    
		    } else {
		      	$("div.errors").hide();
		    }
    	},
    	messages: {
    		'reg_letter[name_first]': {
	        	required: "*",
        		maxlength: "Exceeds 100 characters"           
	      },
	      'reg_letter[name_last]': {
	        	required: "*",
        		maxlength: "Exceeds 100 characters"            
	      },
	      'reg_letter[name_title]': {
	        	required: "*",
        		maxlength: "Exceeds 200 characters"           
	      },
	      'reg_letter[name_affiliation]': {
	        	required: "*",
        		maxlength: "Exceeds 100 characters"           
	      },
	      'reg_letter[pub_priv]': {
	        	required: "*",
        		maxlength: "Exceeds 100 characters"           
	      },
	      'reg_letter[address]': {
	        	required: "*",
        		maxlength: "Exceeds 100 characters"          
	      },
	      'reg_letter[city]': {
	        	required: "*",
        		maxlength: "Exceeds 100 characters"            
	      },
	      'reg_letter[state]': {
	        	required: "*",
        		maxlength: "Exceeds 50 characters"           
	      },
	      'reg_letter[zip]': {
	        	required: "*",
        		maxlength: "Exceeds 50 characters"         
	      },
	      'reg_letter[country]': {
	        	required: "*",
        		maxlength: "Exceeds 50 characters"           
	      },
	      'reg_letter[phone]': {
	        	required: "*",
        		maxlength: "Exceeds 50 characters"
	      },        
	      'reg_letter[email]': {
	        	required: "*",
        		maxlength: "Exceeds 100 characters"
	      }
    	},
    	//errorContainer: $("div .error_label"),
    	errorPlacement: function(error, element) {
    		error.insertAfter('#error_' + element.attr('id'));
      		$('#' + element.attr('id')).removeClass('required').removeClass('success').addClass('error');     
    	},
    	error: function(label) {
    		$('#' + label.attr('for')).removeClass('required').removeClass('success').addClass('error');
    	},
    	success: function(label) {
    		$('#' + label.attr('for')).removeClass('required').removeClass('error').addClass('success');
      		$('#label_' + label.attr('for')).removeClass('error-label').addClass('required-label');
      		$('#error_' + label.attr('for')).html("");
      	}
	});	
}

function updateErrorCount() {
	
}

function errorMessageUpdate( element ) {
	//updateErrorCount();
	if ($('#' + element).hasClass('error')) {
		if ($('#' + element).val().length > 0) {
		  $('#' + element).removeClass('required').removeClass('success').addClass('error');
		  $('#label_' + element).removeClass('required-label').addClass('error-label');
		}
		else {
		  $('#' + element).removeClass('success').removeClass('error').addClass('required');
		  $('#label_' + element).removeClass('success-label').removeClass('error-label').addClass('required-label');        
		  $('#' + element).css ({     
		    'border-color' : '#851717'
		  });
		  $('#state_' + element).removeClass("state-background-tick").addClass("state-background-empty");     
		  // $('#state_' + element).css ({      
		    // // background: 'url("/assets/submit_form_empty.png") no-repeat 0px 1px'
		    // background: '<#%= image_path("submit_form_empty.png") %#> no-repeat 0px 1px'
		  // });          
		}
		}
		else {      
		if ($('#' + element).val().length > 0) {
		  $('#' + element).removeClass('required').removeClass('error').addClass('success');
		  $('#label_' + element).removeClass('error-label').addClass('required-label');
		  $('#' + element).css ({     
		    // 'border-color' : '#005C9E'
		    'border-color' : '#41b737'
		  });
		  $('#state_' + element).removeClass("state-background-empty").addClass("state-background-tick");         
		}
		else {
		  $('#' + element).removeClass('success').removeClass('error').addClass('required');
		  $('#label_' + element).removeClass('success-label').removeClass('error-label').addClass('required-label');
		  $('#state_' + element).removeClass("state-background-tick").addClass("state-background-empty");   
		  // $('#state_' + element).css ({      
		    // // background: 'url("/assets/submit_form_empty.png") no-repeat 0px 1px'
		    // background: '<#%= image_path("submit_form_empty.png") %#> no-repeat 0px 1px'
		  // });
		}
	}
}

$(window).load( function() {	
	$("input[name=recaptcha_response_field]").attr("tabindex","14");

	formValidate();

	// 'Enter' key events
	$("#reg_letter_name_first").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_name_last").focus();
        }
    });
    $("#reg_letter_name_last").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_name_title").focus();
        }
    });
    $("#reg_letter_name_title").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_name_affiliation").focus();
        }
    });
    $("#reg_letter_name_affiliation").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_pub_priv").focus();
        }
    }); 
    $("#reg_letter_pub_priv").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_address").focus();
        }
    }); 
    $("#reg_letter_address").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_city").focus();
        }
    }); 
    $("#reg_letter_city").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_state").focus();
        }
    }); 
    $("#reg_letter_state").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_zip").focus();
        }
    }); 
    $("#reg_letter_zip").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_country").focus();
        }
    }); 
    $("#reg_letter_country").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_phone").focus();
        }
    }); 
    $("#reg_letter_phone").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#reg_letter_email").focus();
        }
    });
    $("#reg_letter_email").keypress(function(e){
        if(e.keyCode==13) {
        	e.preventDefault();
      		$("#g-recaptcha-response").focus();
        }
    });     		
});