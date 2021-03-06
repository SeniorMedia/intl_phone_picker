require 'intl_phone_picker/view_helpers'
require 'intl_phone_picker/activerecord_helpers'

module IntlPhonePicker
  class Engine < Rails::Engine
  end

  class Railtie < Rails::Railtie
    initializer "intl_phone_picker.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
