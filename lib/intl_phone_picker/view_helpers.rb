module IntlPhonePicker
  module ViewHelpers

    def intl_phone_tag(name, value = nil, options = {})
      class_name = 'intl_phone_input_' + IntlPhonePicker::langage_to_use
      hidden_intl_field = options['hidden_intl_field'].presence

      phones_fields = telephone_field_tag(name, value, options.merge(class: class_name).except('hidden_intl_field'))

      # Can call this helper with option 'hidden_intl_field' set to true to toggle an hidden linked field which will store and return
      # the phone number of the input with an international format, starts with '+33' for example
      phones_fields << hidden_field_tag(options['hidden_intl_field'], value, {'data-phone-field' => name}) if hidden_intl_field

      phones_fields
    end

  end
end
