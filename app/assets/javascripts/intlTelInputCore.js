function toggle_intl_tel_input(visible_input) {
  options = {};

  if (visible_input.hasClass('intl_phone_input_fr')) {
    options = {
      defaultCountry: 'fr',
      preferredCountries: ['fr', 'be', 'ch', 'lu', 'ca', 'mc'],
      nationalMode: true
    };
  }
  else if (visible_input.hasClass('intl_phone_input_us')) {
    options = {
      defaultCountry: 'us',
      nationalMode: true
    };
  }

  visible_input.intlTelInput(options);
}

function synchronise_visible_hidden_fields(visible_input, hidden_input) {
  update_hidden_phone_field(visible_input, hidden_input);

  visible_input.on('change', function() {
    update_hidden_phone_field(visible_input, hidden_input);
  });

  visible_input.closest('form').submit(function() {
    update_hidden_phone_field(visible_input, hidden_input);
  });
}

function update_hidden_phone_field(visible_input, hidden_input) {
  hidden_input.val(visible_input.intlTelInput("getNumber"));
}
