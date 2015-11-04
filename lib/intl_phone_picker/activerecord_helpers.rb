class IntlPhonePickerBuilder < ::ActionView::Helpers::FormBuilder

  def intl_phone_input(object_name, options = {})
    telephone_field(object_name, options.merge(:class => 'intl_phone_input_' + IntlPhonePicker::langage_to_use))
  end

end
