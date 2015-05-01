var offset_top = 0;
jQuery(window).scroll(function() {
  offset_top = $(window).scrollTop()
  $('#eventstabs').css('top', offset_top);
});

function scrollToAnchor(aid) {
  var a = $("a[name='" + aid + "']");
  $('html, body').animate({ scrollTop: a.offset().top }, 1000);
}

var validatorCalled = false;
var val = null;

function formValidate() {

  var selectValid1;
  var validCityWorkshop;
  var validRadio1;
  
  $("#form_join").validate({
  
    submitHandler: function(form) {

      validatorCalled = true;         

      // selectValid1 = validateSelect1();
      // selectValid2 = validateSelect2();
      validCityWorkshop = validateCityWorkshop();
      validRadio1 = validateRadio1();
      
      // if ( selectValid1 && validCityWorkshop && validRadio1) {
      if ( validCityWorkshop && validRadio1) {                  	            
        form.submit();
      }
      else
      {
        var errors = 0;
        // if (!selectValid1) {
          // errors += 1;
        // }
        // if (!selectValid2) {
          // errors += 1;
        // }      
        if ( !validCityWorkshop ) {
          errors += 1;
        }
        if ( !validRadio1 ) {
          errors += 1;
        }                               
        if (errors) {
          var message = errors == 1
          // ? '1 required field missed'
          // : errors + ' required fields missed';
          ? '* Required field(s) missed'
          : '* Required field(s) missed';           
          $("div.errors p").html(message);
          // $("div.errors").show();
          $("#btn_submit").blur();
          $("#form_reg_event").focus();   
          scrollToAnchor('anchor1');                      
        } else {
          // $("div.errors").hide();
          $("div.errors p").html("");
        }
      }
    },
  
    debug: true,
    onkeyup: false,
    focusCleanup: true,
    focusInvalid: false,
    // invalidClass: "error",
    // validClass: "success",
    rules: {
      'reg_event[name_first]': {
        required: true,
        minlength: 1,           
        maxlength: 100            
      },
      'reg_event[name_last]': {
        required: true,
        minlength: 1,           
        maxlength: 100            
      },
      'reg_event[name_title_sir]': {
        required: true,
        minlength: 1,           
        maxlength: 200            
      },
      'reg_event[name_title]': {
        required: true,
        minlength: 1,           
        maxlength: 200            
      },
      'reg_event[type_affiliation]': {
        required: true,
        minlength: 1,           
        maxlength: 200            
      },
      'reg_event[name_affiliation]': {
        required: true,
        minlength: 1,           
        maxlength: 100            
      },
      'reg_event[address]': {
        required: true,
        minlength: 1,           
        maxlength: 100            
      },
      'reg_event[city]': {
        required: true,
        minlength: 1,           
        maxlength: 100            
      },
      'reg_event[state]': {
        required: true,
        minlength: 1,           
        maxlength: 50           
      },
      'reg_event[zip]': {
        required: true,
        minlength: 1,           
        maxlength: 50           
      },
      'reg_event[phone]': {
        required: true,
        minlength: 1,           
        maxlength: 50           
      },
      'reg_event[phone_mobile]': {
        required: false,
        minlength: 1,           
        maxlength: 100            
      },          
      'reg_event[email]': {
        required: true,
        maxlength: 100,
        email: true
      },
      'reg_event[email_cc_1]': {
        required: false,
        maxlength: 100,
        email: true
      },
      'reg_event[email_cc_2]': {
        required: false,
        maxlength: 100,
        email: true
      }
    },
    invalidHandler: function(event, validator) {
      val = validator;
      var errors = validator.numberOfInvalids();
      validatorCalled = true;         
      
      // if (!validateSelect1()) {
        // errors += 1;
      // }   
      if ( !validateCityWorkshop() ) {
        errors += 1;
      }
      if ( !validateRadio1() ) {
        errors += 1;
      }                                                             
      if (errors) {
        var message = errors == 1
        // ? '1 required field missed'
        // : errors + ' required fields missed';
        ? '* Required field(s) missed'
        : '* Required field(s) missed';           
        $("div.errors p").html(message);
        $("div.errors").show();
        $("#btn_submit").blur();
        $("#form_reg_event").focus();   
        scrollToAnchor('anchor1');                    
      } else {
        $("div.errors").hide();
      }
    },      
    messages: {
      'reg_event[name_first]': {
        required: "*",
        maxlength: "Exceeds 100 characters"             
      },
      'reg_event[name_last]': {
        required: "*",
        maxlength: "Exceeds 100 characters"             
      },
      'reg_event[name_title_sir]': {
        required: "*",
        maxlength: "Exceeds 20 characters"              
      },
      'reg_event[name_title]': {
        required: "*",
        maxlength: "Exceeds 200 characters"             
      },
      'reg_event[type_affiliation]': {
        required: "*",
        maxlength: "Exceeds 200 characters"             
      },
      'reg_event[name_affiliation]': {
        required: "*",
        maxlength: "Exceeds 100 characters"             
      },
      'reg_event[address]': {
        required: "*",
        maxlength: "Exceeds 100 characters"             
      },
      'reg_event[city]': {
        required: "*",
        maxlength: "Exceeds 100 characters"             
      },
      'reg_event[state]': {
        required: "*",
        maxlength: "Exceeds 50 characters"              
      },
      'reg_event[zip]': {
        required: "*",
        maxlength: "Exceeds 50 characters"              
      },
      'reg_event[phone]': {
        required: "*",
        maxlength: "Exceeds 100 characters"             
      },
      'reg_event[phone]': {
        required: "*",
        maxlength: "Exceeds 100 characters"             
      },          
      'reg_event[email]': {
        required: "*",
        maxlength: "Exceeds 100 characters",
        email: "Invalid form on email address"
      },
      'reg_event[email_cc_1]': {
        required: "*",
        maxlength: "Exceeds 100 characters",
        email: "Invalid form on email address"
      },          
      'reg_event[email_cc_2]': {
        required: "*",
        maxlength: "Exceeds 100 characters",
        email: "Invalid form on email address"
      }         
    },
    errorContainer: $("div .error_label"),        
    errorPlacement: function(error, element) {
      error.insertAfter('#error_' + element.attr('id'));
      $('#' + element.attr('id')).removeClass('required').removeClass('success').addClass('error');
      // $('#state_' + element.attr('id')).removeClass("state-background-tick").addClass("state-background-empty");
    },
    // invalid: function(element) {
    // },
    // highlight: function(element) {
      // $('#' + element.attr('id')).removeClass('required').removeClass('success').addClass('error');
      // //$('#label_' + element.attr('id')).removeClass('required-label').addClass('error-label');
    // },
    // unhighlight: function(element) {
      // //$('#' + element.attr('id')).removeClass('required').removeClass('success').addClass('error');
      // //$('#label_' + element.attr('id')).removeClass('required-label').addClass('error-label');
    // },
    error: function(label) {
      $('#' + label.attr('for')).removeClass('required').removeClass('success').addClass('error');
      // $('#label_' + label.attr('for')).removeClass('required-label').addClass('error-label');
      // $('#state_' + label.attr('for')).removeClass("state-background-tick").addClass("state-background-empty");
      // $('#state_' + label.attr('for')).css ({      
        // background: 'url("/assets/submit_form_empty.png") no-repeat 0px 0px'
      // });          
    },
    success: function(label) {
      $('#' + label.attr('for')).removeClass('required').removeClass('error').addClass('success');
      $('#label_' + label.attr('for')).removeClass('error-label').addClass('required-label');
      // $('#state_' + label.attr('for')).removeClass("state-background-empty").addClass("state-background-tick");
        // background: '<#%= image_path("submit_form_tick.png") %#> no-repeat 0px 0px'
      // });
      // $('#state_' + label.attr('for')).css ({      
        // background: 'url("/assets/submit_form_tick.png") no-repeat 0px 0px'
        // // background: '<#%= image_path("submit_form_tick.png") %#> no-repeat 0px 0px'
      // });
      $('#error_' + label.attr('for')).html("");
    },        
    focus: function(element) {
      //$('#' + element.attr('id')).removeClass('required').removeClass('error').removeClass('success').addClass('focus');
    }
  });
  // $.validator.setDefaults({
    // submitHandler: function() {
      // form.submit();
    // }
  // });
}

// function updateErrorCount_CityWorkshop(isChecked) {
  // //val = formval.validator;
  // if ((val !== undefined) && (val !== null)) {
    // var errors = val.numberOfInvalids();
    // if (!validateSelect1()) {
      // errors += 1;
    // }
    // if ( !isChecked ) {
      // errors += 1;
    // }          
    // if (errors) {
      // var message = errors == 1
      // ? '1 required field missed'
      // : errors + ' required fields missed';
      // $("div.errors p").html(message);
      // // $("div.errors").show();
    // } else {
      // // $("div.errors").hide();
      // $("div.errors p").html("");
    // }
    // val.reset();
  // }          
// }

function updateErrorCount() {
  //val = formval.validator;
  if ((val !== undefined) && (val !== null)) {
    var errors = val.numberOfInvalids();
    // if (!validateSelect1()) {
      // errors += 1;
    // }
    if ( !validateCityWorkshop() ) {
      errors += 1;
    }         
    if (errors) {
      var message = errors == 1
      // ? '1 required field missed'
      // : errors + ' required fields missed';
      ? '* Required field(s) missed'
      : '* Required field(s) missed';
      $("div.errors p").html(message);
      // $("div.errors").show();
    } else {
      // $("div.errors").hide();
      $("div.errors p").html("");
    }
    val.reset();
  }         
}


function errorMessageUpdate( element ) {
  updateErrorCount();
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



// // #41b737;/* #005C9E blue */
// var selectValid1 = false;
// function selectStatus1() {
  // if ($("#reg_event_type_affiliation option:selected").val() == '0') {
    // $('#state_reg_event_type_affiliation').removeClass("state-background-tick").addClass("state-background-empty");     
    // // $('#state_reg_event_type_affiliation').css ({      
      // // // background: 'url("/assets/submit_form_empty.png") no-repeat 0px 0px'
      // // background: '<#%= image_path("submit_form_empty.png") %#> no-repeat 0px 0px'
    // // });
    // $('.dropdown1').css ({      
      // // color: '#838383'
      // color: '#ddd'
    // });
    // selectValid1 = false;           
  // }
  // else {
    // // $('#state_reg_event_type_affiliation').css ({      
      // // background: 'url("/assets/submit_form_tick.png") no-repeat 0px 0px'
      // // // background: '<#%= image_path("submit_form_tick.png") %#> no-repeat 0px 0px'
    // // });
    // $('#state_reg_event_type_affiliation').removeClass("state-background-empty").addClass("state-background-tick");     
    // $('.dropdown1').css ({      
      // // color: '#ACDDE3'
      // color: '#41b737'
    // });     
    // if( !selectValid1 ) {
      // $('.dropdown1').css ({      
        // // 'border-color' : '#005C9E'
        // 'border-color' : '#41b737'
      // });
      // $('.dropdown1 > .selected i').css ({      
        // // 'color' : '#005C9E',
        // 'color' : '#41b737',
        // // 'border-left-color' : '#005C9E'
        // 'border-left-color' : '#41b737' 
      // });
      // $('#error_reg_event_type_affiliation').html("");          
    // }
    // selectValid1 = true;    
  // }
  // updateErrorCount();     
// }
// 
// function validateSelect1() {
//   
  // if ($("#reg_event_type_affiliation option:selected").val() == '0') {
    // // $('#state_reg_event_city_workshop').css ({     
      // // background: 'url("/assets/submit_form_empty.png") no-repeat 0px 0px'
    // // });
    // // $('.dropdown').css ({      
      // // color: '#838383'
    // // });
    // $('.dropdown1').css ({      
      // 'border-color' : '#851717'
    // });
    // $('.dropdown1 > .selected i').css ({      
      // 'color' : '#851717',
      // 'border-left-color' : '#851717' 
    // });
    // $('#error_reg_event_type_affiliation').html("*");
    // selectValid1 = false;   
  // }
  // else {
    // $('.dropdown1').css ({      
      // // 'border-color' : '#005C9E'
      // 'border-color' : '#41b737'
    // });
    // $('.dropdown1 > .selected i').css ({      
      // // 'color' : '#005C9E',
      // // 'border-left-color' : '#005C9E'
      // 'color' : '#41b737',
      // 'border-left-color' : '#41b737' 
    // });
    // $('#error_reg_event_type_affiliation').html("");
    // selectValid1 = true;    
  // }
  // return selectValid1;
// }

function cb_city_workshop(caller) {
  var rd = "#opt_city_workshop_" + caller + "_session";
  var cb = "#reg_event_city_workshop_" + caller;
  var sb = "#cb_workshop_" + caller;
  if($(cb).is(':checked')) {
    $(cb).prop('checked', false);
    $(sb).removeClass("cb-background");
    $(rd).css ({      
      visibility: 'hidden'
    });             
  }
  else {
    $(cb).prop('checked', true);
    $(sb).addClass("cb-background");
    $(rd).css ({      
      visibility: 'visible'
    });
  }
  validateCityWorkshop();     
  updateErrorCount();
}
function validateCityWorkshop() {
  var isChecked = false;
  var cb;
  for (var i = 1; i < 23; i++ ) {
    cb = "#reg_event_city_workshop_" + i;
    if($(cb).is(':checked')) {
      isChecked = true;
    }
  }
  if ( !isChecked ) {
    if (validatorCalled ) {
      $("#border_city_workshop").css ({
        'border-color' : '#851717'
      });
      $('#error_reg_event_city_workshop').html("*<br>Please select a Workshop");
    }
    $("#state_reg_event_city_workshop").removeClass("state-background-tick").addClass("state-background-empty");
    // $("#state_reg_event_city_workshop").css ({     
      // // background: 'url("/assets/submit_form_empty.png") no-repeat 0px 0px'
      // background: '<#%= image_path("submit_form_empty.png") %#> no-repeat 0px 0px'
    // });        
  }
  else {          
    $("#border_city_workshop").css ({
      'border-color' : '#005C9E'
    });
    $('#error_reg_event_city_workshop').html("");
    $("#state_reg_event_city_workshop").removeClass("state-background-empty").addClass("state-background-tick");      
    // $("#state_reg_event_city_workshop").css ({     
      // // background: 'url("/assets/submit_form_tick.png") no-repeat 0px 0px'
      // background: '<#%= image_path("submit_form_tick.png") %#> no-repeat 0px 0px'
    // });
  }
  // if ( validatorCalled ) {
    // updateErrorCount_CityWorkshop(isChecked);
  // }
  return isChecked;
}



var rd_type_affiliation_clicked = false;
$("#reg_event_type_affiliation_1").on("change", function () {
  if (rd_type_affiliation_clicked == false) {
    validateRadio1();
    rd_type_affiliation_clicked = true;
  }
});
$("#reg_event_type_affiliation_2").on("change", function () {
  if (rd_type_affiliation_clicked == false) {
    validateRadio1();
    rd_type_affiliation_clicked = true;
  }
});
$("#reg_event_type_affiliation_3").on("change", function () {
  if (rd_type_affiliation_clicked == false) {
    validateRadio1();
    rd_type_affiliation_clicked = true;
  }
});

function validateRadio1() {
  var isChecked = false;
  if($("#reg_event_type_affiliation_1").is(':checked')) {
    isChecked = true;
  }
  if($("#reg_event_type_affiliation_2").is(':checked')) {
    isChecked = true;
  }
  if($("#reg_event_type_affiliation_3").is(':checked')) {
    isChecked = true;
  }
  if ( !isChecked ) {
    if(validatorCalled) {
      $("#error_radio_span").removeClass("visibility-hidden");
      $("#error_radio").removeClass("state-background-tick").addClass("state-background-empty");
    }
    // $("#rd_type_affiliation_school").addClass("rd-button-error");
    // $("#rd_type_affiliation_company").addClass("rd-button-error");
    // $("#rd_type_affiliation_other").addClass("rd-button-error");
  }
  else {
    // if(validatorCalled) {
      $("#error_radio_span").addClass("visibility-hidden");
      $("#error_radio").removeClass("state-background-empty").addClass("state-background-tick");
    // }
    
    // $("#rd_type_affiliation_school").removeClass("rd-button-error");
    // $("#rd_type_affiliation_company").removeClass("rd-button-error");
    // $("#rd_type_affiliation_other").removeClass("rd-button-error");          
    
    // if ($("#rd_type_affiliation_school").hasClass("rd-button-error")) {
      // $("#rd_type_affiliation_school").removeClass("rd-button-error");
      // $("#rd_type_affiliation_company").removeClass("rd-button-error");
      // $("#rd_type_affiliation_other").removeClass("rd-button-error");          
    // }
    // if ($("#rd_type_affiliation_company").hasClass("rd-button-error")) {
      // $("#rd_type_affiliation_school").removeClass("rd-button-error");
      // $("#rd_type_affiliation_company").removeClass("rd-button-error");
      // $("#rd_type_affiliation_other").removeClass("rd-button-error");          
    // }
    // if ($("#rd_type_affiliation_other").hasClass("rd-button-error")) {
      // $("#rd_type_affiliation_other").removeClass("rd-button-error");          
      // $("#rd_type_affiliation_school").removeClass("rd-button-error");
      // $("#rd_type_affiliation_company").removeClass("rd-button-error");
    // }
  }
  
  return isChecked;
}

function set_rd_1() {
  var rd ="#reg_event_type_affiliation_1";
  var sd = "#rd_type_affiliation_school";
  $(rd).prop('checked',true);
  $(sd).addClass("rd-background");      
}
function unset_rd_1() {
  var sd = "#rd_type_affiliation_school";
  $(sd).removeClass("rd-background");     
}
function set_rd_2() {
  var rd ="#reg_event_type_affiliation_2";
  var sd = "#rd_type_affiliation_company";
  $(rd).prop('checked',true);
  $(sd).addClass("rd-background");      
}
function unset_rd_2() {
  var sd = "#rd_type_affiliation_company";
  $(sd).removeClass("rd-background");     
}
function set_rd_3() {
  var rd ="#reg_event_type_affiliation_3";
  var sd = "#rd_type_affiliation_other";
  $(rd).prop('checked',true);
  $(sd).addClass("rd-background");      
}
function unset_rd_3() {
  var sd = "#rd_type_affiliation_other";
  $(sd).removeClass("rd-background");     
}

function rd_type_affiliation(caller) {

  switch (caller)
  {
    case 'school':
        set_rd_1();
        unset_rd_2();
        unset_rd_3();           
      break;
    case 'company':
        set_rd_2();
        unset_rd_1();
        unset_rd_3();
      break;
    case 'other':
        set_rd_3();
        unset_rd_1();
        unset_rd_2();           
      break;

    default:
    //
  }
  
  if (rd_type_affiliation_clicked == false) {
    validateRadio1();
    rd_type_affiliation_clicked = true;
  }
}

b_validateRadio1 = false;


$(window).load( function() {
//$(document).ready(function(){
  
  formValidate();
  
  // $(document).on("submit", "#form_join", function(e) {
  	// alert("submit");
  	// e.preventDefault();
  // });
  
  
	$("#reg_event_name_first").on("blur", function () {
	  errorMessageUpdate('reg_event_name_first');
	});
	
	$("#reg_event_name_last").on("blur", function () {
	  errorMessageUpdate('reg_event_name_last');
	});
	
	$("#reg_event_name_title_sir").on("blur", function () {
	  errorMessageUpdate('reg_event_name_title_sir');
	});
	
	$("#reg_event_name_title").on("blur", function () {
	  errorMessageUpdate('reg_event_name_title');
	});
	
	// $("#reg_event_type_affiliation").on("blur", function () {
	  // errorMessageUpdate('reg_event_type_affiliation');
	// });
	
	$("#reg_event_name_affiliation").on("blur", function () {
	  errorMessageUpdate('reg_event_name_affiliation');
	});
	
	$("#reg_event_address").on("blur", function () {
	  errorMessageUpdate('reg_event_address');
	});
	
	$("#reg_event_city").on("blur", function () {
	  errorMessageUpdate('reg_event_city');
	});
	
	$("#reg_event_state").on("blur", function () {
	  errorMessageUpdate('reg_event_state');
	});
	
	$("#reg_event_zip").on("blur", function () {
	  errorMessageUpdate('reg_event_zip');
	});
	
	$("#reg_event_phone").on("blur", function () {
	  errorMessageUpdate('reg_event_phone');
	});
	
	$("#reg_event_phone_mobile").on("blur", function () {
	  errorMessageUpdate('reg_event_phone_mobile');
	});
	
	$("#reg_event_email").on("blur", function () {
	  errorMessageUpdate('reg_event_email');
	});
	
	$("#reg_event_email_cc_1").on("blur", function () {
	  errorMessageUpdate('reg_event_email_cc_1');
	});
	
	$("#reg_event_email_cc_2").on("blur", function () {
	  errorMessageUpdate('reg_event_email_cc_2');
	});

  
  
  
  
  
  
  
  
  
  
  
  
  
  $('#reg_event_type_affiliation_1').prop('checked', false);        
  $('#reg_event_type_affiliation_2').prop('checked', false);
  $('#reg_event_type_affiliation_3').prop('checked', false);        

  $('#rd_type_affiliation_school').on('click', function() {
    rd_type_affiliation('school');
    b_validateRadio1 = validateRadio1();        
  });
  $('#rd_type_affiliation_company').on('click', function() {
    rd_type_affiliation('company');
    b_validateRadio1 = validateRadio1();        
  });
  $('#rd_type_affiliation_other').on('click', function() {
    rd_type_affiliation('other');
    b_validateRadio1 = validateRadio1();        
  });

  $('#label_type_affiliation_school').on('click', function() {
    rd_type_affiliation('school');
    b_validateRadio1 = validateRadio1();        
  });
  $('#label_type_affiliation_company').on('click', function() {
    rd_type_affiliation('company');
    b_validateRadio1 = validateRadio1();        
  });
  $('#label_type_affiliation_other').on('click', function() {
    rd_type_affiliation('other');
    b_validateRadio1 = validateRadio1();        
  });


    $('#type_affiliation_school').keypress(function(e){
        if(e.keyCode==13)
        $('#rd_type_affiliation_school').click();
    });             
    $('#type_affiliation_company').keypress(function(e){
        if(e.keyCode==13)
        $('#rd_type_affiliation_company').click();
    });       
    $('#type_affiliation_other').keypress(function(e){
        if(e.keyCode==13)
        $('#rd_type_affiliation_other').click();
    });       

    $('#label_type_affiliation_school').keypress(function(e){
        if(e.keyCode==13)
        $('#rd_type_affiliation_school').click();
    });             
    $('#label_type_affiliation_company').keypress(function(e){
        if(e.keyCode==13)
        $('#rd_type_affiliation_company').click();
    });       
    $('#label_type_affiliation_other').keypress(function(e){
        if(e.keyCode==13)
        $('#rd_type_affiliation_other').click();
    });       
  
  // var image = '../backgrounds/comp025.jpg';
  // img = $('<img />');
  // img.bind('load', function() {
      // $('#loading').fadeOut(1000);
    // setTimeout( function(){
      // centerSignin();
      // showSignin();
      // formValidate();
    // }, 500);
  // });
  // img.attr('src', image);
  // $('#join-image').css({
    // //background: '#F1F2E1 url(' + image + ') no-repeat right top'
    // background: '#F1F2E1 url(' + image + ') repeat right top'
  // })

          
  // $('select').dropdown({
      // 'changed': function(data) {
          // // selectStatus1();
          // selectStatus1();
          // // if(validatorCalled) { 
            // // validateSelect1();
          // // }
      // }
  // });      

  // $(document).on('keypress', '#dropdown1', function(e) {
    // if(e.keyCode == 0) {
      // var e13 = jQuery.Event("keydown");
      // e13.which = 13;
      // e13.keyCode = 13;
      // $("#dropdown1").trigger(e13);
    // }
  // });      

    
    // :name_first, 
          // :name_last, 
          // :name_title_sir,
          // :name_title, 
          // :type_affiliation, 
          // :name_affiliation, 
          // :address, 
          // :city, 
          // :state, 
          // :zip, 
          // :phone, 
          // :phone_mobile,
          // :email, 
          // :email_cc_1, 
          // :email_cc_2, 

    $("#reg_event_name_first").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_name_last").focus();
        }
    });       
    $("#reg_event_name_last").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_name_title_sir").focus();
        }
    });       
    $("#reg_event_name_title_sir").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_name_title").focus();
        }
    });       
    $("#reg_event_name_title").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#dropdown1").attr("tabindex", 6).focus();            
        }
    });       
    $("#reg_event_name_affiliation").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_address").focus();            
        }
    });       
    $("#reg_event_address").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_city").focus();
        }
    });       
    $("#reg_event_city").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_state").focus();
        }
    });       
    $("#reg_event_state").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_zip").focus();
        }
    });       
    $("#reg_event_zip").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_phone").focus();
        }
    });       
    $("#reg_event_phone").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_phone_mobile").focus();
        }
    });       
    $("#reg_event_phone_mobile").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_email").focus();
        }
    });       
    $("#reg_event_email").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_email_cc_1").focus();
        }
    });       
    $("#reg_event_email_cc_1").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
      $("#reg_event_email_cc_2").focus();
        }
    });       
    $("#reg_event_email_cc_2").keypress(function(e){
        if(e.keyCode==13) {
        e.preventDefault();
        $('#label_city_workshop_1').focus();
        }
    });       


  // $("input[name=recaptcha_response_field]").attr("tabindex","41");
    // $("input[name=recaptcha_response_field]").keypress(function(e){
        // if(e.keyCode==13) {
          // e.preventDefault();
          // $("#btn_submit").focus();
        // }
    // });        

    // $('#label_survey_preferences_4').keypress(function(e){
        // if(e.keyCode==13) {
          // $('#label_survey_preferences_4').click();
          // $('#label_survey_preferences_5').focus();
        // }                                    
    // });        
    // $('#label_survey_preferences_5').keypress(function(e){
        // if(e.keyCode==13) {
          // $('#label_survey_preferences_5').click();
          // // $("input[name=recaptcha_response_field]").attr("tabindex","41").focus();
          // $("#recaptcha_response_field").attr("tabindex","41").focus();
        // }                                    
    // });        




    
  // $('#cb_workshop_1').on('click', function() {
    // cb_city_workshop(1);
  // });
  // $('#cb_workshop_2').on('click', function() {
    // cb_city_workshop(2);
  // });
  // $('#cb_workshop_3').on('click', function() {
    // cb_city_workshop(3);
  // });
  // $('#cb_workshop_4').on('click', function() {
    // cb_city_workshop(4);
  // });
  // $('#cb_workshop_5').on('click', function() {
    // cb_city_workshop(5);
  // });
  // $('#cb_workshop_6').on('click', function() {
    // cb_city_workshop(6);
  // });
  // $('#cb_workshop_7').on('click', function() {
    // cb_city_workshop(7);
  // });
  // $('#cb_workshop_8').on('click', function() {
    // cb_city_workshop(8);
  // });
  $('#cb_workshop_9').on('click', function() {
    cb_city_workshop(9);
  });
  $('#cb_workshop_10').on('click', function() {
    cb_city_workshop(10);
  });
  $('#cb_workshop_11').on('click', function() {
    cb_city_workshop(11);
  });
  $('#cb_workshop_12').on('click', function() {
    cb_city_workshop(12);
  });
  $('#cb_workshop_13').on('click', function() {
    cb_city_workshop(13);
  });
  $('#cb_workshop_14').on('click', function() {
    cb_city_workshop(14);
  });
  $('#cb_workshop_15').on('click', function() {
    cb_city_workshop(15);
  });
  $('#cb_workshop_16').on('click', function() {
    cb_city_workshop(16);
  });
  $('#cb_workshop_17').on('click', function() {
    cb_city_workshop(17);
  });
  $('#cb_workshop_18').on('click', function() {
    cb_city_workshop(18);
  });
  $('#cb_workshop_19').on('click', function() {
    cb_city_workshop(19);
  });
  $('#cb_workshop_20').on('click', function() {
    cb_city_workshop(20);
  });
  $('#cb_workshop_21').on('click', function() {
    cb_city_workshop(21);
  });
  $('#cb_workshop_22').on('click', function() {
    cb_city_workshop(22);
  });
    
    
  // var lb;
  // for (var i = 1; i < 14; i++ ) {
    // lb = "#label_city_workshop_" + i;
      // $(lb).keypress(function(e){
          // if(e.keyCode==13)
          // $(lb).click();
      // });        
  // }
    
    
    // $('#label_city_workshop_2').keypress(function(e){
        // if(e.keyCode==13) {
          // $('#label_city_workshop_2').click();
          // $('#label_city_workshop_1').focus();
        // }            
    // });        
    // $('#label_city_workshop_1').keypress(function(e){
        // if(e.keyCode==13) {
          // $('#label_city_workshop_1').click();
          // $('#label_city_workshop_3').focus();
        // }            
    // });        
    // $('#label_city_workshop_3').keypress(function(e){
        // if(e.keyCode==13) {
          // $('#label_city_workshop_3').click();
          // $('#label_city_workshop_4').focus();
        // }            
    // });        
    // $('#label_city_workshop_4').keypress(function(e){
        // if(e.keyCode==13) {
          // $('#label_city_workshop_4').click();
          // $('#label_city_workshop_5').focus();
        // }            
    // });        
    // $('#label_city_workshop_5').keypress(function(e){
        // if(e.keyCode==13) {
          // $('#label_city_workshop_5').click();
          // $('#label_city_workshop_6').focus();
        // }            
    // });        
    // $('#label_city_workshop_6').keypress(function(e){
        // if(e.keyCode==13) {
          // $('#label_city_workshop_6').click();
          // $('#label_city_workshop_7').focus();
        // }            
    // });        
    // $('#label_city_workshop_7').keypress(function(e){
        // if(e.keyCode==13) {
          // $('#label_city_workshop_7').click();
          // $('#label_city_workshop_8').focus();
        // }            
    // });        
    // $('#label_city_workshop_8').keypress(function(e){
        // if(e.keyCode==13) {
          // $('#label_city_workshop_8').click();
          // $('#label_city_workshop_9').focus();
        // }            
    // });        
    $('#label_city_workshop_9').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_9').click();
          $('#label_city_workshop_10').focus();
        }           
    });       
    $('#label_city_workshop_10').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_10').click();
          $('#label_city_workshop_11').focus();
        }           
    });       
    $('#label_city_workshop_11').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_11').click();
          $('#label_city_workshop_12').focus();
        }           
    });       
    $('#label_city_workshop_12').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_12').click();
          $('#label_city_workshop_14').focus();
        }           
    });       
    $('#label_city_workshop_14').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_14').click();
          $('#label_city_workshop_13').focus();
        }           
    });       
    $('#label_city_workshop_13').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_13').click();
          $('#label_city_workshop_15').focus();
        }           
    });       
    $('#label_city_workshop_15').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_15').click();
          $('#label_city_workshop_16').focus();
        }           
    });       
    $('#label_city_workshop_16').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_16').click();
          $('#label_city_workshop_17').focus();
        }           
    });       
    $('#label_city_workshop_17').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_17').click();
          $('#label_city_workshop_20').focus();
        }           
    });       
    $('#label_city_workshop_20').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_20').click();
          $('#label_city_workshop_18').focus();
        }           
    });       
    $('#label_city_workshop_18').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_18').click();
          $('#label_city_workshop_19').focus();
        }           
    });       
    $('#label_city_workshop_19').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_19').click();
          $('#label_city_workshop_21').focus();
        }           
    });       
    $('#label_city_workshop_21').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_21').click();
          $('#label_city_workshop_22').focus();
        }           
    });       
    $('#label_city_workshop_22').keypress(function(e){
        if(e.keyCode==13) {
          $('#label_city_workshop_22').click();
          $("#btn_submit").focus();
        }
    });       

  $('input:checkbox').on('change', function() {
    alert("change");
    if ( validatorCalled ) {
      updateErrorCount();
    }
    else {
      validateCityWorkshop(); 
    }
  });
    

  $("#tab4").addClass("active");
  
});
