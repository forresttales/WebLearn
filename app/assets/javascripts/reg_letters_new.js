function scrollToAnchor(aid) {
	//var a = $("a[name='" + aid + "']");
	$('html, body').animate({ scrollTop: /*a.offset().top*/ $("#form_reg_letter").offset().top - 100 }, 500);
}

function formValidate() {
	$("#form_letter").validate({

		submitHandler: function(form) {
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
    		var errors = validator.numberOfInvalids();

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
        		maxlength: "Exceeds 100 characters",
        		email: "Invalid form on email address"
	      }
    	},
    	errorPlacement: function(error, element) {
    		error.insertAfter('#error_' + element.attr('id'));
      		//$('#' + element.attr('id'))/*.removeClass('required')*/.removeClass('success').addClass('error'); 
    	},
    	success: function(label) {
    		$('#' + label.attr('for')).removeClass('required').removeClass('error').addClass('success');
      		$('#label_' + label.attr('for')).removeClass('error-label').addClass('required-label');
      		$('#error_' + label.attr('for')).html("");
      	}
	});	
}

function errorMessageUpdate( element ) {
	if($('#' + element).valid()) {
		$('#state_' + element).removeClass("state-background-empty").addClass("state-background-tick");
	} else {
		$('#state_' + element).removeClass("state-background-tick").addClass("state-background-empty");
	}
}

$(window).load( function() {	
	$("input[name=recaptcha_response_field]").attr("tabindex","14");

	formValidate();

	//Live validation
	$("#reg_letter_name_first").on("blur", function () {
	  errorMessageUpdate('reg_letter_name_first');
	});
	$("#reg_letter_name_last").on("blur", function () {
	  errorMessageUpdate('reg_letter_name_last');
	});
	$("#reg_letter_name_title").on("blur", function () {
	  errorMessageUpdate('reg_letter_name_title');
	});
	$("#reg_letter_name_affiliation").on("blur", function () {
	  errorMessageUpdate('reg_letter_name_affiliation');
	});
	$("#reg_letter_pub_priv").on("blur", function () {
	  errorMessageUpdate('reg_letter_pub_priv');
	});
	$("#reg_letter_address").on("blur", function () {
	  errorMessageUpdate('reg_letter_address');
	});
	$("#reg_letter_city").on("blur", function () {
	  errorMessageUpdate('reg_letter_city');
	});
	$("#reg_letter_state").on("blur", function () {
	  errorMessageUpdate('reg_letter_state');
	});
	$("#reg_letter_zip").on("blur", function () {
	  errorMessageUpdate('reg_letter_zip');
	});
	$("#reg_letter_country").on("blur", function () {
	  errorMessageUpdate('reg_letter_country');
	});
	$("#reg_letter_phone").on("blur", function () {
	  errorMessageUpdate('reg_letter_phone');
	});
	$("#reg_letter_email").on("blur", function () {
	  errorMessageUpdate('reg_letter_email');
	});

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