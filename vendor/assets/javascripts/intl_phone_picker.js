//= require libphonenumber/utils

jQuery(document).ready(function($) {

  $("input[type=tel]").intlTelInput({
      defaultCountry: "fr",
      preferredCountries: ['fr', 'be', 'ch', 'lu', 'ca', 'mc'],
  });

});
