module IntlPhonePicker
  module ViewHelpers

    def intl_phone_tag_fr(name, value = nil, options = {})
      # options[:class] ||= String.new
      # options[:class] += ' intl_phone_input_fr'
      telephone_field_tag(name, value, options.merge(:class => 'intl_phone_input_fr'))
    end

    def intl_phone_tag_us(name, value = nil, options = {})
      # options[:class] ||= String.new
      # options[:class] += ' intl_phone_input_us'
      telephone_field_tag(name, value, options.merge(:class => 'intl_phone_input_fr'))
    end

  end
end