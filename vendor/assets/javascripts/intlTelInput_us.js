//= require libphonenumber/utils
//= require intlTelInput

jQuery(document).ready(function($) {

  $("input[type=tel]").intlTelInput({
    defaultCountry: "us"
  });

});
