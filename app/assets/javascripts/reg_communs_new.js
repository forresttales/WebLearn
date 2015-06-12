function scrollToAnchor(aid) {
    // var a = $("a[name='" + aid + "']");
    // $('html, body').animate({
    //     scrollTop: a.offset().top
    // }, 1000);
	$('html, body').animate({
		scrollTop: $("#form_reg_commun").offset().top - 70 
	}, 1000);
}

$(window).load(function() {
	formValidate();

    $("#reg_commun_name_first").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#reg_commun_name_last").focus();
        }
    });
    $("#reg_commun_name_last").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#reg_commun_name_title").focus();
        }
    });
    $("#reg_commun_name_title").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#reg_commun_name_affiliation").focus();
        }
    });
    $("#reg_commun_name_affiliation").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#label_public_private_public").focus();
        }
    });
    $("#reg_commun_address").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#reg_commun_city").focus();
        }
    });
    $("#reg_commun_city").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#reg_commun_state").focus();
        }
    });
    $("#reg_commun_state").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#reg_commun_zip").focus();
        }
    });
    $("#reg_commun_zip").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#reg_commun_phone").focus();
        }
    });
    $("#reg_commun_phone").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#reg_commun_email").focus();
        }
    });
    $("#reg_commun_email").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#label_level_1").focus();
        }
    });
    $('#reg_commun_level_other').keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#dropdown1").attr("tabindex", 22).focus();
        }
    });
    $('#dropdown1').keypress(function(e) {
        if (e.keyCode == 13)
            $("#dropdown2").focus();
    });

    $('#reg_commun_public_private_public').prop('checked', false);
    $('#reg_commun_public_private_private').prop('checked', false);

    $('#rd_public_private_public').on('click', function() {
        rd_public_private('public');
    });
    $('#rd_public_private_private').on('click', function() {
        rd_public_private('private');
    });

    $('#cb_level_1').on('click', function() {
        cb_level(1);
    });
    $('#cb_level_2').on('click', function() {
        cb_level(2);
    });
    $('#cb_level_3').on('click', function() {
        cb_level(3);
    });
    $('#cb_level_4').on('click', function() {
        cb_level(4);
    });
    $('#cb_level_5').on('click', function() {
        cb_level(5);
    });
    $('#cb_level_6').on('click', function() {
        cb_level(6);
    });
    $('#cb_level_7').on('click', function() {
        cb_level(7);
    });

    $('#cb_characterize_area_1').on('click', function() {
        cb_characterize_area(1);
    });
    $('#cb_characterize_area_2').on('click', function() {
        cb_characterize_area(2);
    });
    $('#cb_characterize_area_3').on('click', function() {
        cb_characterize_area(3);
    });
    $('#cb_characterize_area_4').on('click', function() {
        cb_characterize_area(4);
    });
    $('#cb_characterize_area_5').on('click', function() {
        cb_characterize_area(5);
    });
    $('#cb_characterize_area_6').on('click', function() {
        cb_characterize_area(6);
    });
    $('#cb_characterize_area_7').on('click', function() {
        cb_characterize_area(7);
    });
    $('#cb_characterize_area_8').on('click', function() {
        cb_characterize_area(8);
    });
    $('#cb_characterize_area_9').on('click', function() {
        cb_characterize_area(9);
    });
    $('#cb_characterize_area_10').on('click', function() {
        cb_characterize_area(10);
    });

    $('#cb_survey_preferences_1').on('click', function() {
        cb_survey_preferences(1);
    });
    $('#cb_survey_preferences_2').on('click', function() {
        cb_survey_preferences(2);
    });
    $('#cb_survey_preferences_3').on('click', function() {
        cb_survey_preferences(3);
    });
    $('#cb_survey_preferences_4').on('click', function() {
        cb_survey_preferences(4);
    });
    $('#cb_survey_preferences_5').on('click', function() {
        cb_survey_preferences(5);
    });

    $('#label_public_private_public').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#rd_public_private_public').click();
            $("#reg_commun_address").focus();
        }
    });
    $('#label_public_private_private').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_public_private_private').click();
            $("#reg_commun_address").focus();
        }
    });

    $('#label_level_1').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_level_1').click();
            $("#label_level_2").focus();
        }
    });
    $('#label_level_2').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_level_2').click();
            $("#label_level_3").focus();
        }
    });
    $('#label_level_3').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_level_3').click();
            $("#label_level_4").focus();
        }
    });
    $('#label_level_4').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_level_4').click();
            $("#label_level_5").focus();
        }
    });
    $('#label_level_5').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_level_5').click();
            $("#label_level_6").focus();
        }
    });
    $('#label_level_6').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_level_6').click();
            $("#label_level_7").focus();
        }
    });
    $('#label_level_7').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_level_7').click();
            $("#reg_commun_level_other").focus();
        }
    });

    $('#label_characterize_area_1').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_characterize_area_1').click();
            $('#label_characterize_area_2').focus();
        }
    });
    $('#label_characterize_area_2').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_characterize_area_2').click();
            $('#label_characterize_area_3').focus();
        }
    });
    $('#label_characterize_area_3').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_characterize_area_3').click();
            $('#label_characterize_area_4').focus();
        }
    });
    $('#label_characterize_area_4').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_characterize_area_4').click();
            $('#label_characterize_area_5').focus();
        }
    });
    $('#label_characterize_area_5').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_characterize_area_5').click();
            $('#label_characterize_area_6').focus();
        }
    });
    $('#label_characterize_area_6').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_characterize_area_6').click();
            $('#label_characterize_area_7').focus();
        }
    });
    $('#label_characterize_area_7').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_characterize_area_7').click();
            $('#label_characterize_area_8').focus();
        }
    });
    $('#label_characterize_area_8').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_characterize_area_8').click();
            $('#label_characterize_area_9').focus();
        }
    });
    $('#label_characterize_area_9').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_characterize_area_9').click();
            $('#label_characterize_area_10').focus();
        }
    });
    $('#label_characterize_area_10').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_characterize_area_10').click();
            $('#reg_commun_characterize_area_other').focus();
        }
    });
    $('#reg_commun_characterize_area_other').keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $('#label_survey_preferences_1').focus();
        }
    });

    $('#label_survey_preferences_1').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_survey_preferences_1').click();
            $('#label_survey_preferences_2').focus();
        }
    });
    $('#label_survey_preferences_2').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_survey_preferences_2').click();
            $('#label_survey_preferences_3').focus();
        }
    });
    $('#label_survey_preferences_3').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_survey_preferences_3').click();
            $('#label_survey_preferences_4').focus();
        }
    });
    $('#label_survey_preferences_4').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_survey_preferences_4').click();
            $('#label_survey_preferences_5').focus();
        }
    });
    $('#label_survey_preferences_5').keypress(function(e) {
        if (e.keyCode == 13) {
            $('#label_survey_preferences_5').click();
            $("#recaptcha_response_field").attr("tabindex", "41").focus();
        }
    });

    $("#reg_commun_name_first").on("blur", function() {
        errorMessageUpdate('reg_commun_name_first');
    });

    $("#reg_commun_name_last").on("blur", function() {
        errorMessageUpdate('reg_commun_name_last');
    });

    $("#reg_commun_name_title").on("blur", function() {
        errorMessageUpdate('reg_commun_name_title');
    });

    $("#reg_commun_name_affiliation").on("blur", function() {
        errorMessageUpdate('reg_commun_name_affiliation');
    });

    $("#reg_commun_address").on("blur", function() {
        errorMessageUpdate('reg_commun_address');
    });

    $("#reg_commun_city").on("blur", function() {
        errorMessageUpdate('reg_commun_city');
    });

    $("#reg_commun_state").on("blur", function() {
        errorMessageUpdate('reg_commun_state');
    });

    $("#reg_commun_zip").on("blur", function() {
        errorMessageUpdate('reg_commun_zip');
    });

    $("#reg_commun_phone").on("blur", function() {
        errorMessageUpdate('reg_commun_phone');
    });

    $("#reg_commun_email").on("blur", function() {
        errorMessageUpdate('reg_commun_email');
    });

    $("#reg_commun_level_other").on("blur", function() {
        validateLevel();
        updateErrorCount();
    });

    $("#reg_commun_characterize_area_other").on("blur", function() {
        validateCharacterizeArea();
        updateErrorCount();
    });

    $('input:checkbox').on('change', function() {
        validateLevel();
        validateCharacterizeArea();
        validateSurveyPreferences();
    });

    $('select').dropdown({
        'changed': function(data) {
            if (data.select_id == "reg_commun_institution_size") {
                selectStatus1();
                $("#dropdown2").attr("tabindex", 23).focus();
            }
            if (data.select_id == "reg_commun_employee_number") {
                selectStatus2();
                $("#dropdown3").attr("tabindex", 24).focus();
            }
            if (data.select_id == "reg_commun_characterize_decision") {
                selectStatus3();
                $("#label_characterize_area_1").attr("tabindex", 25).focus();
            }
        }
    });

    $("input[name=recaptcha_response_field]").attr("tabindex", "41");
    $("input[name=recaptcha_response_field]").keypress(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#btn_submit").focus();
        }
    });
});

validatorCalled = false;
var val = null;

function formValidate() {

    $("#form_join").validate({

        submitHandler: function(form) {

            validatorCalled = true;

            validRadio1 = validateRadio1();
            validLevel = validateLevel();
            selectValid1 = validateSelect1();
            selectValid2 = validateSelect2();
            selectValid3 = validateSelect3();
            validCharacterizeArea = validateCharacterizeArea();
            validSurveyPreferences = validateSurveyPreferences();
            if (validRadio1 && validLevel && selectValid1 && selectValid2 && selectValid3 && validCharacterizeArea && validSurveyPreferences) {
                form.submit();
            } else {
                var errors = 0;
                if (!validRadio1) {
                    errors += 1;
                }
                if (!validLevel) {
                    errors += 1;
                }
                if (!selectValid1) {
                    errors += 1;
                }
                if (!selectValid2) {
                    errors += 1;
                }
                if (!selectValid3) {
                    errors += 1;
                }
                if (!validCharacterizeArea) {
                    errors += 1;
                }
                if (!validSurveyPreferences) {
                    errors += 1;
                }

                if (errors) {
                    var message = errors == 1 ? '1 required field missed' : errors + ' required fields missed';
                    $("div.errors p").html(message);
                    $("#btn_submit").blur();
                    $("#form_reg_commun").focus();
                    scrollToAnchor('anchor1');
                } else {
                    $("div.errors p").html("");
                }
            }
        },

        debug: true,
        onkeyup: false,
        focusCleanup: true,
        focusInvalid: false,

        rules: {
            'reg_commun[name_first]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[name_last]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[name_title]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[name_affiliation]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[public_private]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[address]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[city]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[state]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[zip]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[phone]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[email]': {
                required: true,
                maxlength: 50,
                email: true
            },
            'reg_commun[level]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[institution_size]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[characterize_decision]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_communcharacterize_area]': {
                required: true,
                minlength: 1,
                maxlength: 50
            },
            'reg_commun[survey_preferences]': {
                required: true,
                minlength: 1,
                maxlength: 50
            }
        },
        invalidHandler: function(commun, validator) {
            val = validator;
            var errors = validator.numberOfInvalids();
            validatorCalled = true;

            if (!validateRadio1()) {
                errors += 1;
            }
            if (!validateLevel()) {
                errors += 1;
            }
            if (!validateSelect1()) {
                errors += 1;
            }
            if (!validateSelect2()) {
                errors += 1;
            }
            if (!validateSelect3()) {
                errors += 1;
            }
            if (!validateCharacterizeArea()) {
                errors += 1;
            }
            if (!validateSurveyPreferences()) {
                errors += 1;
            }

            if (errors) {
                var message = errors == 1 ? '1 required field missed' : errors + ' required fields missed';
                $("div.errors p").html(message);
                // $("div.errors").show();
                $("#btn_submit").blur();
                $("#form_reg_commun").focus();
                scrollToAnchor('anchor1');
            } else {
                $("div.errors p").html("");
            }
        },
        messages: {
            'reg_commun[name_first]': {
                required: "*",
                maxlength: "First Name exceeds 50 characters"
            },
            'reg_commun[name_last]': {
                required: "*",
                maxlength: "Last Name exceeds 50 characters"
            },
            'reg_commun[name_title]': {
                required: "*",
                maxlength: "Title exceeds 50 characters"
            },
            'reg_commun[name_affiliation]': {
                required: "*",
                maxlength: "Affiliation exceeds 100 characters"
            },
            'reg_commun[address]': {
                required: "*",
                maxlength: "Address exceeds 100 characters"
            },
            'reg_commun[city]': {
                required: "*",
                maxlength: "City exceeds 50 characters"
            },
            'reg_commun[state]': {
                required: "*",
                maxlength: "State exceeds 50 characters"
            },
            'reg_commun[zip]': {
                required: "*",
                maxlength: "Name exceeds 50 characters"
            },
            'reg_commun[phone]': {
                required: "*",
                maxlength: "Name exceeds 50 characters"
            },
            'reg_commun[email]': {
                required: "*",
                maxlength: "Email address exceeds 255 characters",
                email: "Please enter a valid email address"
            }
        },
        errorContainer: $("div .error_label"),
        errorPlacement: function(error, element) {
            error.insertAfter('#error_' + element.attr('id'));
            $('#' + element.attr('id')).removeClass('required').removeClass('success').addClass('error');
        },
        error: function(label) {
            $('#' + label.attr('for')).removeClass('required').removeClass('success').addClass('error');
            $('#label_' + label.attr('for')).removeClass('required-label').addClass('error-label');

        },
        success: function(label) {
            $('#' + label.attr('for')).removeClass('required').removeClass('error').addClass('success');
            $('#label_' + label.attr('for')).removeClass('error-label').addClass('required-label');

            $('#state_' + label.attr('for')).css({
                background: 'url("/repository/submit_form_tick.png") no-repeat 0px 0px'
            });

            $('#error_' + label.attr('for')).html("");
        },
        focus: function(element) {
            $('#' + element.attr('id')).removeClass('required').removeClass('error').removeClass('success').addClass('focus');
        }
    });
}

function updateErrorCount() {
    if ((val !== undefined) && (val !== null)) {

        var errors = val.numberOfInvalids();

        if (!validateRadio1()) {
            errors += 1;
        }
        if (!validateLevel()) {
            errors += 1;
        }
        if (!validateSelect1()) {
            errors += 1;
        }
        if (!validateSelect2()) {
            errors += 1;
        }
        if (!validateSelect3()) {
            errors += 1;
        }
        if (!validateCharacterizeArea()) {
            errors += 1;
        }
        if (!validateSurveyPreferences()) {
            errors += 1;
        }

        if (errors) {
            var message = errors == 1 ? '1 required field missed' : errors + ' required fields missed';
            $("div.errors p").html(message);
            // $("div.errors").show();
        } else {
            // $("div.errors").hide();
            $("div.errors p").html("");
        }

        val.reset();
    }
}

function errorMessageUpdate(element) {
    updateErrorCount();

    if ($('#' + element).hasClass('error')) {
        if ($('#' + element).val().length > 0) {
            $('#' + element).removeClass('required').removeClass('success').addClass('error');
            $('#label_' + element).removeClass('required-label').addClass('error-label');
        } else {
            $('#' + element).removeClass('success').removeClass('error').addClass('required');
            $('#label_' + element).removeClass('success-label').removeClass('error-label').addClass('required-label');

            $('#' + element).css({
                'border-color': '#851717'
            });

            $('#state_' + element).css({
                background: 'url("/repository/submit_form_empty.png") no-repeat 0px 1px'
            });
        }
    } else {
        if ($('#' + element).val().length > 0) {
            $('#' + element).removeClass('required').removeClass('error').addClass('success');
            $('#label_' + element).removeClass('error-label').addClass('required-label');

            $('#' + element).css({
                'border-color': '#41b737'
            });
        } else {
            $('#' + element).removeClass('success').removeClass('error').addClass('required');
            $('#label_' + element).removeClass('success-label').removeClass('error-label').addClass('required-label');

            $('#state_' + element).css({
                background: 'url("/repository/submit_form_empty.png") no-repeat 0px 1px'
            });

        }
    }
}

var rd_public_private_clicked = false;
$("#reg_commun_public_private_public").on("change", function() {

    $('#reg_commun_address').focus();

    if (rd_public_private_clicked == false) {
        validateRadio1();
        rd_public_private_clicked = true;
    }
});
$("#reg_commun_public_private_private").on("change", function() {

    $('#reg_commun_address').focus();

    if (rd_public_private_clicked == false) {
        validateRadio1();
        rd_public_private_clicked = true;
    }
});

function validateRadio1() {

    var isChecked = false;
    if ($("#reg_commun_public_private_public").is(':checked')) {
        isChecked = true;
    }
    if ($("#reg_commun_public_private_private").is(':checked')) {
        isChecked = true;
    }

    if (!isChecked) {
        $("#border_public_private").css({
            'border-color': '#851717'
        });

        $('#error_reg_commun_public_private').html("*");

        $("#state_reg_commun_public_private").css({
            background: 'url("/repository/submit_form_empty.png") no-repeat 0px 0px'
        });

    } else {
        $("#border_public_private").css({
            'border-color': '#41b737'
        });

        $('#error_reg_commun_public_private').html("");

        $("#state_reg_commun_public_private").css({
            background: 'url("/repository/submit_form_tick.png") no-repeat 0px 0px'
        });
    }

    return isChecked;
}

function validateLevel() {

    var isChecked = false;
    var cb;
    for (var i = 1; i < 8; i++) {
        cb = "#reg_commun_level_" + i;
        if ($(cb).is(':checked')) {
            isChecked = true;
        }

    }

    if ($("#reg_commun_level_other").val().length > 0) {
        isChecked = true;
    }

    if (!isChecked) {
        if (validatorCalled) {
            $("#border_level").css({
                'border-color': '#851717'
            });

            $('#error_reg_commun_level').html("*<br>Please select an option<br>or indicate an OTHER");
        }

        $("#state_reg_commun_level").css({
            background: 'url("/repository/submit_form_empty.png") no-repeat 0px 0px'
        });
    } else {
        $("#border_level").css({
            'border-color': '#41b737'
        });

        $('#error_reg_commun_level').html("");

        $("#state_reg_commun_level").css({
            background: 'url("/repository/submit_form_tick.png") no-repeat 0px 0px'
        });
    }

    return isChecked;
}


function validateCharacterizeArea() {

    var isChecked = false;
    var cb;
    for (var i = 1; i < 11; i++) {
        cb = "#reg_commun_characterize_area_" + i;
        if ($(cb).is(':checked')) {
            isChecked = true;
        }

    }

    if ($("#reg_commun_characterize_area_other").val().length > 0) {
        isChecked = true;
    }

    if (!isChecked) {
        if (validatorCalled) {
            $("#border_characterize_area").css({
                'border-color': '#851717'
            });

            $('#error_reg_commun_characterize_area').html("*<br>Please select an option<br>or indicate an OTHER");
        }

        $("#state_reg_commun_characterize_area").css({
            background: 'url("/repository/submit_form_empty.png") no-repeat 0px 0px'
        });
    } else {
        $("#border_characterize_area").css({
            'border-color': '#41b737'
        });

        $('#error_reg_commun_characterize_area').html("");

        $("#state_reg_commun_characterize_area").css({
            background: 'url("/repository/submit_form_tick.png") no-repeat 0px 0px'
        });
    }

    return isChecked;
}


function validateSurveyPreferences() {

    var isChecked = false;
    var cb;
    for (var i = 1; i < 6; i++) {
        cb = "#reg_commun_survey_preferences_" + i;
        if ($(cb).is(':checked')) {
            isChecked = true;
        }

    }

    if (!isChecked) {
        if (validatorCalled) {
            $("#border_survey_preferences").css({
                'border-color': '#851717'
            });

            $('#error_reg_commun_survey_preferences').html("*<br>Please select an option<br>or indicate an OTHER");
        }

        $("#state_reg_commun_survey_preferences").css({
            background: 'url("/repository/submit_form_empty.png") no-repeat 0px 0px'
        });
    } else {
        $("#border_survey_preferences").css({
            'border-color': '#41b737'
        });

        $('#error_reg_commun_survey_preferences').html("");

        $("#state_reg_commun_survey_preferences").css({
            background: 'url("/repository/submit_form_tick.png") no-repeat 0px 0px'
        });
    }

    return isChecked;
}


var selectValid1 = false;

function selectStatus1() {

    if ($("#reg_commun_institution_size option:selected").val() == '0') {
        $('#state_reg_commun_institution_size').css({
            background: 'url("/repository/submit_form_empty.png") no-repeat 0px 0px'
        });

        $('.dropdown1').css({
            color: '#b3b3b3'
        });

        selectValid1 = false;
    } else {
        $('#state_reg_commun_institution_size').css({
            background: 'url("/repository/submit_form_tick.png") no-repeat 0px 0px'
        });

        $('.dropdown1').css({
            color: '#376340' // '#ACDDE3'
        });

        if (!selectValid1) {
            $('.dropdown1').css({
                'border-color': '#41b737'
            });

            $('.dropdown1 > .selected i').css({
                'color': '#41b737',
                'border-left-color': '#41b737'
            });

            $('#error_reg_commun_institution_size').html("");
        }

        selectValid1 = true;
    }

    if (validatorCalled) {
        validateSelect1();
    }

    updateErrorCount();
}

function validateSelect1() {

    if ($("#reg_commun_institution_size option:selected").val() == '0') {

        $('.dropdown1').css({
            'border-color': '#851717'
        });

        $('.dropdown1 > .selected i').css({
            'color': '#851717',
            'border-left-color': '#851717'
        });

        $('#error_reg_commun_institution_size').html("*");

        selectValid1 = false;
    } else {
        $('.dropdown1').css({
            'border-color': '#41b737'
        });

        $('.dropdown1 > .selected i').css({
            'color': '#41b737',
            'border-left-color': '#41b737'
        });

        $('#error_reg_commun_institution_size').html("");

        selectValid1 = true;
    }

    return selectValid1;
}


var selectValid2 = false;

function selectStatus2() {

    if ($("#reg_commun_employee_number option:selected").val() == '0') {
        $('#state_reg_commun_employee_number').css({
            background: 'url("/repository/submit_form_empty.png") no-repeat 0px 0px'
        });

        $('.dropdown2').css({
            color: '#b3b3b3'
        });

        selectValid2 = false;
    } else {
        $('#state_reg_commun_employee_number').css({
            background: 'url("/repository/submit_form_tick.png") no-repeat 0px 0px'
        });

        $('.dropdown2').css({
            color: '#376340' // '#ACDDE3'
        });

        if (!selectValid2) {
            $('.dropdown2').css({
                'border-color': '#41b737'
            });

            $('.dropdown2 > .selected i').css({
                'color': '#41b737',
                'border-left-color': '#41b737'
            });

            $('#error_reg_commun_employee_number').html("");
        }

        selectValid2 = true;
    }

    if (validatorCalled) {
        validateSelect2();
    }

    updateErrorCount();
}

function validateSelect2() {

    if ($("#reg_commun_employee_number option:selected").val() == '0') {
        $('.dropdown2').css({
            'border-color': '#851717'
        });

        $('.dropdown2 > .selected i').css({
            'color': '#851717',
            'border-left-color': '#851717'
        });

        $('#error_reg_commun_employee_number').html("*");

        selectValid2 = false;
    } else {
        $('.dropdown2').css({
            'border-color': '#41b737'
        });

        $('.dropdown2 > .selected i').css({
            'color': '#41b737',
            'border-left-color': '#41b737'
        });

        $('#error_reg_commun_employee_number').html("");

        selectValid2 = true;
    }

    return selectValid2;
}

// reg_commun_characterize_decision
var selectValid3 = false;

function selectStatus3() {

    if ($("#reg_commun_characterize_decision option:selected").val() == '0') {
        $('#state_reg_commun_characterize_decision').css({
            background: 'url("/repository/submit_form_empty.png") no-repeat 0px 0px'
        });

        $('.dropdown3').css({
            color: '#b3b3b3'
        });

        selectValid3 = false;
    } else {
        $('#state_reg_commun_characterize_decision').css({
            background: 'url("/repository/submit_form_tick.png") no-repeat 0px 0px'
        });

        $('.dropdown3').css({
            color: '#376340' // '#ACDDE3'
        });

        if (!selectValid1) {
            $('.dropdown3').css({
                'border-color': '#41b737'
            });

            $('.dropdown3 > .selected i').css({
                'color': '#41b737',
                'border-left-color': '#41b737'
            });

            $('#error_reg_commun_characterize_decision').html("");
        }

        selectValid3 = true;
    }

    if (validatorCalled) {
        validateSelect3();
    }

    updateErrorCount();
}

function validateSelect3() {

    if ($("#reg_commun_characterize_decision option:selected").val() == '0') {
        $('.dropdown3').css({
            'border-color': '#851717'
        });

        $('.dropdown3 > .selected i').css({
            'color': '#851717',
            'border-left-color': '#851717'
        });

        $('#error_reg_commun_characterize_decision').html("*");

        selectValid3 = false;
    } else {
        $('.dropdown3').css({
            'border-color': '#41b737' //'#005C9E'
        });

        $('.dropdown3 > .selected i').css({
            'color': '#41b737', //was #005C9E
            //'border-left-color' : '#005C9E'  
            'border-left-color': '#41b737'
        });

        $('#error_reg_commun_characterize_decision').html("");

        selectValid3 = true;
    }

    return selectValid3;
}

function cb_level(caller) {
    var cb = "#reg_commun_level_" + caller;
    var sb = "#cb_level_" + caller;
    if ($(cb).is(':checked')) {
        $(cb).prop('checked', false);

        $(sb).removeClass("cb-background");
    } else {
        $(cb).prop('checked', true);

        $(sb).addClass("cb-background");
    }
    validateLevel();
    updateErrorCount();
}

function set_rd_1() {
    var rd = "#reg_commun_public_private_public";
    var sd = "#rd_public_private_public";

    $(rd).prop('checked', true);

    $(sd).addClass("rd-background");
}

function unset_rd_1() {
    var sd = "#rd_public_private_public";

    $(sd).removeClass("rd-background");
}

function set_rd_2() {
    var rd = "#reg_commun_public_private_private";
    var sd = "#rd_public_private_private";

    $(rd).prop('checked', true);

    $(sd).addClass("rd-background");
}

function unset_rd_2() {
    var sd = "#rd_public_private_private";

    $(sd).removeClass("rd-background");
}

function rd_public_private(caller) {
    switch (caller) {
        case 'public':
            set_rd_1();
            unset_rd_2();
            break;
        case 'private':
            set_rd_2();
            unset_rd_1();
            break;
        default:
            //
    }

    if (rd_public_private_clicked == false) {
        validateRadio1();
        rd_public_private_clicked = true;
    }

    updateErrorCount();
}

function cb_characterize_area(caller) {
    var cb = "#reg_commun_characterize_area_" + caller;
    var sb = "#cb_characterize_area_" + caller;
    if ($(cb).is(':checked')) {
        $(cb).prop('checked', false);

        $(sb).removeClass("cb-background");
    } else {
        $(cb).prop('checked', true);

        $(sb).addClass("cb-background");
    }
    validateCharacterizeArea();
    updateErrorCount();
}

function cb_survey_preferences(caller) {
    var cb = "#reg_commun_survey_preferences_" + caller;
    var sb = "#cb_survey_preferences_" + caller;
    if ($(cb).is(':checked')) {
        $(cb).prop('checked', false);

        $(sb).removeClass("cb-background");
    } else {
        $(cb).prop('checked', true);

        $(sb).addClass("cb-background");
    }
    validateSurveyPreferences();
    updateErrorCount();
}