module IntlPhonePicker
  module ViewHelpers

    def intl_phone_tag(name, value = nil, options = {})
      telephone_field_tag(name, value, options.merge(:class => 'intl_phone_input_' + IntlPhonePicker::langage_to_use))
    end

  end
end