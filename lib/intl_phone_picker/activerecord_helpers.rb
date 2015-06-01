class IntlPhonePickerBuilder < ::ActionView::Helpers::FormBuilder

  def self.available_languages
    ['us', 'fr']
  end

  def intl_phone_input(object_name, options = {})
    if (I18n.locale && I18n.locale.to_s.in?(IntlPhonePickerBuilder.available_languages))
      telephone_field(object_name, options.merge(:class => 'intl_phone_input_' + I18n.locale.to_s))
    else
      telephone_field(object_name, options.merge(:class => 'intl_phone_input_us'))
    end
  end

end
