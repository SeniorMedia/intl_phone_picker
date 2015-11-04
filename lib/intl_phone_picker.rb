require 'intl_phone_picker/version'
require 'intl_phone_picker/railtie' if defined?(Rails)

module IntlPhonePicker

  AVAILABLE_LANGAGES = ['us', 'fr']

  class << self
    def langage_to_use
      I18n.locale && I18n.locale.to_s.in?(IntlPhonePicker::AVAILABLE_LANGAGES) ? I18n.locale.to_s : 'us'
    end
  end

end
