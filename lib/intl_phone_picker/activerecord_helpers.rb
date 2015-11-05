class IntlPhonePickerBuilder < ::ActionView::Helpers::FormBuilder

  def intl_phone_input(object_name, options = {})
    class_name = 'intl_phone_input_' + IntlPhonePicker::langage_to_use
    hidden_intl_field = options['hidden_intl_field'].presence

    phones_fields = telephone_field(object_name, options.merge(class: class_name).except('hidden_intl_field'))

    # Can call this helper with option 'hidden_intl_field' set to true to toggle an hidden linked field which will store and return
    # the phone number of the input with an international format, starts with '+33' for example
    phones_fields << hidden_field(hidden_intl_field, {'data-phone-field' => "#{self.object_name}[#{object_name}]"}) if hidden_intl_field

    phones_fields
  end

end
