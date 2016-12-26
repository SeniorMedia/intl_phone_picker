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
    updateHiddenPhoneField($(event.target), hiddenInput)

    if (toggleValidation($(event.target)) == false)
      e.preventDefault()
  })
}

function updateHiddenPhoneField(visibleInput, hiddenInput) {
  hiddenInput.val(visibleInput.intlTelInput("getNumber"))
}

function toggleValidation(phone_input) {
  var isPhoneValid = phone_input.intlTelInput('isValidNumber')

  if (!isPhoneValid) {
    phone_input.closest('.form-group').addClass('has-danger')
    phone_input.addClass('form-control-danger')
  } else {
    phone_input.closest('.form-group').removeClass('has-danger')
    phone_input.removeClass('form-control-danger')
  }

  return (isPhoneValid)
}
