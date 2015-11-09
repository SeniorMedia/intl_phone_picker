class ActionView::Helpers::FormBuilder

  def intl_phone_input(object_name, options = {})
    class_name            = 'intl_phone_input_' + IntlPhonePicker::langage_to_use
    options               = IntlPhonePicker::options_keys_to_sym options

    phones_fields = telephone_field(object_name, options.merge(class: class_name).except(:hidden_intl_field))

    # Can call this helper with option 'hidden_intl_field' set to true to toggle an hidden linked field which will store and return
    # the phone number of the input with an international format, starts with '+33' for example
    if options[:hidden_intl_field].presence
      data_phone_field_attr = "#{self.object_name}[#{object_name}]"

      phones_fields << hidden_field(options[:hidden_intl_field], { 'data-phone-field' => data_phone_field_attr })
    end

    render partial: 'intl_phone_picker/intl_helper', locals: { phones_fields: phones_fields, visible_input_name: data_phone_field_attr, hidden_input_name: options[:hidden_intl_field] }
  end

end
