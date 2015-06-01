module IntlPhonePicker
  module ViewHelpers

    def intl_phone_tag(name, value = nil, options = {})
      available_languages = ['us', 'fr']

      if (I18n.locale && I18n.locale.to_s.in?(available_languages))
        telephone_field_tag(name, value, options.merge(:class => 'intl_phone_input_' + I18n.locale.to_s))
      else
        telephone_field_tag(name, value, options.merge(:class => 'intl_phone_input_us'))
      end
    end

  end
end