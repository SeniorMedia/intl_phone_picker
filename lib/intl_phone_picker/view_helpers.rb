module IntlPhonePicker
  module ViewHelpers

    def intl_phone_fr_tag(name, value = nil, options = {})
      options[:class] ||= String.new
      options[:class] += ' intl_phone_input_fr'
      telephone_field_tag(name = name, value = value, options = options)
    end

    def intl_phone_us_tag(name, value = nil, options = {})
      options[:class] ||= String.new
      options[:class] += ' intl_phone_input_us'
      telephone_field_tag(name = name, value = value, options = options)
    end

  end
end