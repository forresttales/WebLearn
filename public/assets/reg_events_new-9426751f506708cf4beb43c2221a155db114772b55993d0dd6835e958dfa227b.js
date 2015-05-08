function scrollToAnchor(e){var r=$("a[name='"+e+"']");$("html, body").animate({scrollTop:r.offset().top},1e3)}function formValidate(){var e,r;$("#form_join").validate({submitHandler:function(t){if(validatorCalled=!0,e=validateCityWorkshop(),r=validateRadio1(),e&&r)t.submit();else{var o=0;if(e||(o+=1),r||(o+=1),o){var a="* Required field(s) missed";$("div.errors p").html(a),$("#btn_submit").blur(),$("#form_reg_event").focus(),scrollToAnchor("anchor1")}else $("div.errors p").html("")}},debug:!0,onkeyup:!1,focusCleanup:!0,focusInvalid:!1,rules:{"reg_event[name_first]":{required:!0,minlength:1,maxlength:100},"reg_event[name_last]":{required:!0,minlength:1,maxlength:100},"reg_event[name_title_sir]":{required:!0,minlength:1,maxlength:200},"reg_event[name_title]":{required:!0,minlength:1,maxlength:200},"reg_event[type_affiliation]":{required:!0,minlength:1,maxlength:200},"reg_event[name_affiliation]":{required:!0,minlength:1,maxlength:100},"reg_event[address]":{required:!0,minlength:1,maxlength:100},"reg_event[city]":{required:!0,minlength:1,maxlength:100},"reg_event[state]":{required:!0,minlength:1,maxlength:50},"reg_event[zip]":{required:!0,minlength:1,maxlength:50},"reg_event[phone]":{required:!0,minlength:1,maxlength:50},"reg_event[phone_mobile]":{required:!1,minlength:1,maxlength:100},"reg_event[email]":{required:!0,maxlength:100,email:!0},"reg_event[email_cc_1]":{required:!1,maxlength:100,email:!0},"reg_event[email_cc_2]":{required:!1,maxlength:100,email:!0}},invalidHandler:function(e,r){val=r;var t=r.numberOfInvalids();if(validatorCalled=!0,validateCityWorkshop()||(t+=1),validateRadio1()||(t+=1),t){var o="* Required field(s) missed";$("div.errors p").html(o),$("div.errors").show(),$("#btn_submit").blur(),$("#form_reg_event").focus(),scrollToAnchor("anchor1")}else $("div.errors").hide()},messages:{"reg_event[name_first]":{required:"*",maxlength:"Exceeds 100 characters"},"reg_event[name_last]":{required:"*",maxlength:"Exceeds 100 characters"},"reg_event[name_title_sir]":{required:"*",maxlength:"Exceeds 20 characters"},"reg_event[name_title]":{required:"*",maxlength:"Exceeds 200 characters"},"reg_event[type_affiliation]":{required:"*",maxlength:"Exceeds 200 characters"},"reg_event[name_affiliation]":{required:"*",maxlength:"Exceeds 100 characters"},"reg_event[address]":{required:"*",maxlength:"Exceeds 100 characters"},"reg_event[city]":{required:"*",maxlength:"Exceeds 100 characters"},"reg_event[state]":{required:"*",maxlength:"Exceeds 50 characters"},"reg_event[zip]":{required:"*",maxlength:"Exceeds 50 characters"},"reg_event[phone]":{required:"*",maxlength:"Exceeds 100 characters"},"reg_event[phone]":{required:"*",maxlength:"Exceeds 100 characters"},"reg_event[email]":{required:"*",maxlength:"Exceeds 100 characters",email:"Invalid form on email address"},"reg_event[email_cc_1]":{required:"*",maxlength:"Exceeds 100 characters",email:"Invalid form on email address"},"reg_event[email_cc_2]":{required:"*",maxlength:"Exceeds 100 characters",email:"Invalid form on email address"}},errorContainer:$("div .error_label"),errorPlacement:function(e,r){e.insertAfter("#error_"+r.attr("id")),$("#"+r.attr("id")).removeClass("required").removeClass("success").addClass("error")},error:function(e){$("#"+e.attr("for")).removeClass("required").removeClass("success").addClass("error")},success:function(e){$("#"+e.attr("for")).removeClass("required").removeClass("error").addClass("success"),$("#label_"+e.attr("for")).removeClass("error-label").addClass("required-label"),$("#error_"+e.attr("for")).html("")},focus:function(){}})}function updateErrorCount(){if(void 0!==val&&null!==val){var e=val.numberOfInvalids();if(validateCityWorkshop()||(e+=1),e){var r="* Required field(s) missed";$("div.errors p").html(r)}else $("div.errors p").html("");val.reset()}}function errorMessageUpdate(e){updateErrorCount(),$("#"+e).hasClass("error")?$("#"+e).val().length>0?($("#"+e).removeClass("required").removeClass("success").addClass("error"),$("#label_"+e).removeClass("required-label").addClass("error-label")):($("#"+e).removeClass("success").removeClass("error").addClass("required"),$("#label_"+e).removeClass("success-label").removeClass("error-label").addClass("required-label"),$("#"+e).css({"border-color":"#851717"}),$("#state_"+e).removeClass("state-background-tick").addClass("state-background-empty")):$("#"+e).val().length>0?($("#"+e).removeClass("required").removeClass("error").addClass("success"),$("#label_"+e).removeClass("error-label").addClass("required-label"),$("#"+e).css({"border-color":"#41b737"}),$("#state_"+e).removeClass("state-background-empty").addClass("state-background-tick")):($("#"+e).removeClass("success").removeClass("error").addClass("required"),$("#label_"+e).removeClass("success-label").removeClass("error-label").addClass("required-label"),$("#state_"+e).removeClass("state-background-tick").addClass("state-background-empty"))}function cb_city_workshop(e){var r="#opt_city_workshop_"+e+"_session",t="#reg_event_city_workshop_"+e,o="#cb_workshop_"+e;$(t).is(":checked")?($(t).prop("checked",!1),$(o).removeClass("cb-background"),$(r).css({visibility:"hidden"})):($(t).prop("checked",!0),$(o).addClass("cb-background"),$(r).css({visibility:"visible"})),validateCityWorkshop(),updateErrorCount()}function validateCityWorkshop(){for(var e,r=!1,t=1;23>t;t++)e="#reg_event_city_workshop_"+t,$(e).is(":checked")&&(r=!0);return r?($("#border_city_workshop").css({"border-color":"#005C9E"}),$("#error_reg_event_city_workshop").html(""),$("#state_reg_event_city_workshop").removeClass("state-background-empty").addClass("state-background-tick")):(validatorCalled&&($("#border_city_workshop").css({"border-color":"#851717"}),$("#error_reg_event_city_workshop").html("*<br>Please select a Workshop")),$("#state_reg_event_city_workshop").removeClass("state-background-tick").addClass("state-background-empty")),r}function validateRadio1(){var e=!1;return $("#reg_event_type_affiliation_1").is(":checked")&&(e=!0),$("#reg_event_type_affiliation_2").is(":checked")&&(e=!0),$("#reg_event_type_affiliation_3").is(":checked")&&(e=!0),e?($("#error_radio_span").addClass("visibility-hidden"),$("#error_radio").removeClass("state-background-empty").addClass("state-background-tick")):validatorCalled&&($("#error_radio_span").removeClass("visibility-hidden"),$("#error_radio").removeClass("state-background-tick").addClass("state-background-empty")),e}function set_rd_1(){var e="#reg_event_type_affiliation_1",r="#rd_type_affiliation_school";$(e).prop("checked",!0),$(r).addClass("rd-background")}function unset_rd_1(){var e="#rd_type_affiliation_school";$(e).removeClass("rd-background")}function set_rd_2(){var e="#reg_event_type_affiliation_2",r="#rd_type_affiliation_company";$(e).prop("checked",!0),$(r).addClass("rd-background")}function unset_rd_2(){var e="#rd_type_affiliation_company";$(e).removeClass("rd-background")}function set_rd_3(){var e="#reg_event_type_affiliation_3",r="#rd_type_affiliation_other";$(e).prop("checked",!0),$(r).addClass("rd-background")}function unset_rd_3(){var e="#rd_type_affiliation_other";$(e).removeClass("rd-background")}function rd_type_affiliation(e){switch(e){case"school":set_rd_1(),unset_rd_2(),unset_rd_3();break;case"company":set_rd_2(),unset_rd_1(),unset_rd_3();break;case"other":set_rd_3(),unset_rd_1(),unset_rd_2()}0==rd_type_affiliation_clicked&&(validateRadio1(),rd_type_affiliation_clicked=!0)}var offset_top=0;jQuery(window).scroll(function(){offset_top=$(window).scrollTop(),$("#eventstabs").css("top",offset_top)});var validatorCalled=!1,val=null,rd_type_affiliation_clicked=!1;$("#reg_event_type_affiliation_1").on("change",function(){0==rd_type_affiliation_clicked&&(validateRadio1(),rd_type_affiliation_clicked=!0)}),$("#reg_event_type_affiliation_2").on("change",function(){0==rd_type_affiliation_clicked&&(validateRadio1(),rd_type_affiliation_clicked=!0)}),$("#reg_event_type_affiliation_3").on("change",function(){0==rd_type_affiliation_clicked&&(validateRadio1(),rd_type_affiliation_clicked=!0)}),b_validateRadio1=!1,jQuery(window).load(function(e){formValidate(),e("#reg_event_name_first").on("blur",function(){errorMessageUpdate("reg_event_name_first")}),e("#reg_event_name_last").on("blur",function(){errorMessageUpdate("reg_event_name_last")}),e("#reg_event_name_title_sir").on("blur",function(){errorMessageUpdate("reg_event_name_title_sir")}),e("#reg_event_name_title").on("blur",function(){errorMessageUpdate("reg_event_name_title")}),e("#reg_event_name_affiliation").on("blur",function(){errorMessageUpdate("reg_event_name_affiliation")}),e("#reg_event_address").on("blur",function(){errorMessageUpdate("reg_event_address")}),e("#reg_event_city").on("blur",function(){errorMessageUpdate("reg_event_city")}),e("#reg_event_state").on("blur",function(){errorMessageUpdate("reg_event_state")}),e("#reg_event_zip").on("blur",function(){errorMessageUpdate("reg_event_zip")}),e("#reg_event_phone").on("blur",function(){errorMessageUpdate("reg_event_phone")}),e("#reg_event_phone_mobile").on("blur",function(){errorMessageUpdate("reg_event_phone_mobile")}),e("#reg_event_email").on("blur",function(){errorMessageUpdate("reg_event_email")}),e("#reg_event_email_cc_1").on("blur",function(){errorMessageUpdate("reg_event_email_cc_1")}),e("#reg_event_email_cc_2").on("blur",function(){errorMessageUpdate("reg_event_email_cc_2")}),e("#reg_event_type_affiliation_1").prop("checked",!1),e("#reg_event_type_affiliation_2").prop("checked",!1),e("#reg_event_type_affiliation_3").prop("checked",!1),e("#rd_type_affiliation_school").on("click",function(){rd_type_affiliation("school"),b_validateRadio1=validateRadio1()}),e("#rd_type_affiliation_company").on("click",function(){rd_type_affiliation("company"),b_validateRadio1=validateRadio1()}),e("#rd_type_affiliation_other").on("click",function(){rd_type_affiliation("other"),b_validateRadio1=validateRadio1()}),e("#label_type_affiliation_school").on("click",function(){rd_type_affiliation("school"),b_validateRadio1=validateRadio1()}),e("#label_type_affiliation_company").on("click",function(){rd_type_affiliation("company"),b_validateRadio1=validateRadio1()}),e("#label_type_affiliation_other").on("click",function(){rd_type_affiliation("other"),b_validateRadio1=validateRadio1()}),e("#type_affiliation_school").keypress(function(r){13==r.keyCode&&e("#rd_type_affiliation_school").click()}),e("#type_affiliation_company").keypress(function(r){13==r.keyCode&&e("#rd_type_affiliation_company").click()}),e("#type_affiliation_other").keypress(function(r){13==r.keyCode&&e("#rd_type_affiliation_other").click()}),e("#label_type_affiliation_school").keypress(function(r){13==r.keyCode&&e("#rd_type_affiliation_school").click()}),e("#label_type_affiliation_company").keypress(function(r){13==r.keyCode&&e("#rd_type_affiliation_company").click()}),e("#label_type_affiliation_other").keypress(function(r){13==r.keyCode&&e("#rd_type_affiliation_other").click()}),e("#reg_event_name_first").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_name_last").focus())}),e("#reg_event_name_last").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_name_title_sir").focus())}),e("#reg_event_name_title_sir").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_name_title").focus())}),e("#reg_event_name_title").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#dropdown1").attr("tabindex",6).focus())}),e("#reg_event_name_affiliation").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_address").focus())}),e("#reg_event_address").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_city").focus())}),e("#reg_event_city").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_state").focus())}),e("#reg_event_state").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_zip").focus())}),e("#reg_event_zip").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_phone").focus())}),e("#reg_event_phone").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_phone_mobile").focus())}),e("#reg_event_phone_mobile").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_email").focus())}),e("#reg_event_email").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_email_cc_1").focus())}),e("#reg_event_email_cc_1").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#reg_event_email_cc_2").focus())}),e("#reg_event_email_cc_2").keypress(function(r){13==r.keyCode&&(r.preventDefault(),e("#label_city_workshop_1").focus())}),e("#cb_workshop_9").on("click",function(){cb_city_workshop(9)}),e("#cb_workshop_10").on("click",function(){cb_city_workshop(10)}),e("#cb_workshop_11").on("click",function(){cb_city_workshop(11)}),e("#cb_workshop_12").on("click",function(){cb_city_workshop(12)}),e("#cb_workshop_13").on("click",function(){cb_city_workshop(13)}),e("#cb_workshop_14").on("click",function(){cb_city_workshop(14)}),e("#cb_workshop_15").on("click",function(){cb_city_workshop(15)}),e("#cb_workshop_16").on("click",function(){cb_city_workshop(16)}),e("#cb_workshop_17").on("click",function(){cb_city_workshop(17)}),e("#cb_workshop_18").on("click",function(){cb_city_workshop(18)}),e("#cb_workshop_19").on("click",function(){cb_city_workshop(19)}),e("#cb_workshop_20").on("click",function(){cb_city_workshop(20)}),e("#cb_workshop_21").on("click",function(){cb_city_workshop(21)}),e("#cb_workshop_22").on("click",function(){cb_city_workshop(22)}),e("#label_city_workshop_9").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_9").click(),e("#label_city_workshop_10").focus())}),e("#label_city_workshop_10").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_10").click(),e("#label_city_workshop_11").focus())}),e("#label_city_workshop_11").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_11").click(),e("#label_city_workshop_12").focus())}),e("#label_city_workshop_12").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_12").click(),e("#label_city_workshop_14").focus())}),e("#label_city_workshop_14").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_14").click(),e("#label_city_workshop_13").focus())}),e("#label_city_workshop_13").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_13").click(),e("#label_city_workshop_15").focus())}),e("#label_city_workshop_15").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_15").click(),e("#label_city_workshop_16").focus())}),e("#label_city_workshop_16").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_16").click(),e("#label_city_workshop_17").focus())}),e("#label_city_workshop_17").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_17").click(),e("#label_city_workshop_20").focus())}),e("#label_city_workshop_20").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_20").click(),e("#label_city_workshop_18").focus())}),e("#label_city_workshop_18").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_18").click(),e("#label_city_workshop_19").focus())}),e("#label_city_workshop_19").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_19").click(),e("#label_city_workshop_21").focus())}),e("#label_city_workshop_21").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_21").click(),e("#label_city_workshop_22").focus())}),e("#label_city_workshop_22").keypress(function(r){13==r.keyCode&&(e("#label_city_workshop_22").click(),e("#btn_submit").focus())}),e("input:checkbox").on("change",function(){alert("change"),validatorCalled?updateErrorCount():validateCityWorkshop()}),e("#tab4").addClass("active")});