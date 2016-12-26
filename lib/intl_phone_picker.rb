require 'intl_phone_picker/version'
require 'intl_phone_picker/railtie' if defined?(Rails)

module IntlPhonePicker

  AVAILABLE_LANGAGES = %w(us fr).freeze
  INTL_CLASS_NAME = 'intl_phone_input_'.freeze

  class << self
    def langage_to_use
      I18n.locale && I18n.locale.to_s.in?(IntlPhonePicker::AVAILABLE_LANGAGES) ? I18n.locale.to_s : 'us'
    end

    def intl_class_name
      "#{IntlPhonePicker::INTL_CLASS_NAME}#{IntlPhonePicker::langage_to_use}"
    end

    def options_keys_to_sym options
      ActiveSupport::HashWithIndifferentAccess.new options
    end
  end

end
