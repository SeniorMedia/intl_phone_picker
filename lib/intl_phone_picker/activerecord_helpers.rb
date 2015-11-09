class ActionView::Helpers::FormBuilder

  def intl_phone_input(object_name, options = {})
    options = IntlPhonePicker::options_keys_to_sym options
    data_phone_field_attr = "#{self.object_name}[#{object_name}]"
    hidden_field_name = "#{self.object_name}[#{options[:hidden_intl_field]}]" if options[:hidden_intl_field].presence

    phones_fields = telephone_field(object_name, options.merge(class: "#{options[:class]} #{IntlPhonePicker::intl_class_name}".strip).except(:hidden_intl_field))
    phones_fields << hidden_field(options[:hidden_intl_field], { 'data-phone-field' => data_phone_field_attr }) if options[:hidden_intl_field].presence

    @template.render partial: 'intl_phone_picker/intl_helper', locals: { phones_fields: phones_fields, visible_input_name: data_phone_field_attr, hidden_input_name: hidden_field_name }
  end

end
