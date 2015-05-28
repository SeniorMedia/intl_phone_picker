# IntlPhonePicker

https://rubygems.org/gems/intl_phone_picker

IntlPhonePicker is a ruby gem which allow you to change your html5 "tel" fields into jQuery international phone number pickers.

## Sources

  - Javascript based library : https://github.com/Bluefieldscom/intl-tel-input
  - Ruby based gem : https://github.com/ispyropoulos/intl-tel-input-rails
  - French language generator : https://github.com/harold-s/harold-s/tree/master/intl-tel-input-french-translation

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'intl_phone_picker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install intl_phone_picker

To use javascript and stylesheet libraries you need to add :

  - In application default stylesheet file :

    ```ruby
    //= require intlTelInput
    ```

  - In application default javascript file :

    ```ruby
    //= require intlTelInput_[shortname_of_your_country]
    ```

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/intl_phone_picker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
