class IntlPhonePickerBuilder < ::ActionView::Helpers::FormBuilder

  def intl_phone_input_fr(object_name, options = {})
    telephone_field(object_name, options.merge(:class => 'intl_phone_input_fr'))
  end

  def intl_phone_input_us(object_name, options = {})
    telephone_field(object_name, options.merge(:class => 'intl_phone_input_us'))
  end

end
