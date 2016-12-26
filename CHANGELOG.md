# Version 0.0.1

  - Import javascript and css libraries.

# Version 0.0.2

  - Change specifications
  - Automatically import 'utils.js' and 'intl_phone_picker' when include javascript
  - Add France (fr) to supported countries. Credits to Harold Simpson : https://github.com/harold-s/harold-s
    - Include '//= require intlTelInput_fr' to use it.
    - Include '//= require intlTelInput_us' to use default english number picker.
  - Phone number picker is automatically added to all 'tel' fields.

# Version 0.0.3

  - Fix US and FR translations .yml files (Can bug when integrating to existing rails project)

# Version 0.0.4

  - Call only one stylesheet file and one javascript file
  - Helpers 'intl_phone_fr_tag' and 'intl_phone_us_tag' were created
  - Only one javascript file which contains all traductions.
  - Can swith switch between languages inside the same project (calling corresponding helper)
  - Helpers overrides 'telephone_field_tag' (can use same attributes)

# Version 0.0.5

  - Add Activerecord Helpers : 'intl_phone_input_fr' and 'intl_phone_input_us'
  - Change name of view methods to 'intl_phone_tag_fr' and 'intl_phone_tag_us'

# Version 0.0.6

  - Select number picker country by locale of main application
  - Only 2 helpers : 'intl_phone_tag' and 'intl_phone_input'

# Version 0.0.7

  - Update to International Telephone Input v6.0.4
  - Split Javascript manifest files with 'intlTelInput' and 'intlTelInputLang' (optionnal, for default phone pickers integrations)
  - An argument named 'hidden_intl_field' can be passed into 'intl_phone_tag' options which add an hidden_field storing international phone (on submit of closest form)
  - This argument can either be named 'hidden_intl_field' or :hidden_intl_field (string or symbol)
  - Its name can be choose (ex: hidden_intl_field: 'test_hidden') and return when form will be submit if 'intlTelInputLang' is required in Javascript manifest file
  - Hidden filed option is also available for Activerecord helper 'intl_phone_input'. You will need to create an 'attr_accessor' with the name you choose, like 'full_phone'. Exemple : 'f.intl_phone_input :Phone, { hidden_intl_field: :full_phone }'
  - Fix Travis builds by adding default test
  - Code Refacto

# Version 1.0.0

  - Bump lib to version 10.0.0
  - Wait for document 'turbolinks ready' (Rails 5) event before applying script
  - Prevent from submit invalid phone number by default

# Version 1.0.1

  - Fix Javascript event
