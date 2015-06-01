# Version 0.0.1

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
