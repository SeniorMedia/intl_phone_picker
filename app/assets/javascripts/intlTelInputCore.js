function toggleIntlTelInput(visibleInput) {
  options = {}

  if (visibleInput.hasClass('intl_phone_input_fr')) {
    options = {
      initialCountry: 'fr',
      preferredCountries: ['fr', 'be', 'ch', 'lu', 'ca', 'mc'],
      nationalMode: true
    }
  }
  else if (visibleInput.hasClass('intl_phone_input_us')) {
    options = {
      initialCountry: 'us',
      nationalMode: true
    }
  }

  visibleInput.intlTelInput(options)
}

function synchronizeVisibleHiddenFields(visibleInput, hiddenInput) {
  updateHiddenPhoneField(visibleInput, hiddenInput)

  visibleInput.on('keyup', function(event) {
    var selectedCountry = $(event.target).intlTelInput("getSelectedCountryData")
    var formattedNumber = intlTelInputUtils.formatNumber(this.value, selectedCountry.iso2, intlTelInputUtils.numberFormat.NATIONAL)

    $(event.target).val(formattedNumber)

    updateHiddenPhoneField($(event.target), hiddenInput)
  })

  visibleInput.closest('form').on('submit', function(event) {
    updateHiddenPhoneField(visibleInput, hiddenInput)

    if (toggleValidation(visibleInput) == false)
      event.preventDefault()
  })
}

function updateHiddenPhoneField(visibleInput, hiddenInput) {
  hiddenInput.val(visibleInput.intlTelInput("getNumber"))
}

function toggleValidation(phoneInput) {
  var isPhoneValid = phoneInput.intlTelInput('isValidNumber');

  if (!isPhoneValid) {
    phoneInput.closest('.form-group').addClass('has-danger')
    phoneInput.addClass('form-control-danger')
  } else {
    phoneInput.closest('.form-group').removeClass('has-danger')
    phoneInput.removeClass('form-control-danger')
  }

  return (isPhoneValid)
}
