require 'intl_phone_picker/view_helpers'
require 'intl_phone_picker/activerecord_helpers'

module IntlPhonePicker
  class Engine < ::Rails::Engine
    initializer "intl_phone_picker.activerecord_helpers" do
      ActionView::Base.default_form_builder = IntlPhonePickerBuilder
    end
  end

  class Railtie < Rails::Railtie
    initializer "intl_phone_picker.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end