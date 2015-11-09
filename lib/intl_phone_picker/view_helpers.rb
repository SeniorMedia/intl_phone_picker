module IntlPhonePicker
  module ViewHelpers

    def intl_phone_tag(name, value = nil, options = {})
      options = IntlPhonePicker::options_keys_to_sym options

      phones_fields = telephone_field_tag(name, value, options.merge(class: "#{options[:class]} #{IntlPhonePicker::intl_class_name}".strip).except(:hidden_intl_field))
      phones_fields << hidden_field_tag(options[:hidden_intl_field], value, { 'data-phone-field' => name }) if options[:hidden_intl_field].presence

      render partial: 'intl_phone_picker/intl_helper', locals: { phones_fields: phones_fields, visible_input_name: name, hidden_input_name: options[:hidden_intl_field] }
    end

  end
end
