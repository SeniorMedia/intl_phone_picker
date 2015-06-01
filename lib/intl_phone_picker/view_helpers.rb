module IntlPhonePicker
  module ViewHelpers

    def intl_phone_input_tag(value = nil, language = 'us')
      number_field_tag 'intl_phone_input_' + language, value, class: 'tel'
    end

  end
end