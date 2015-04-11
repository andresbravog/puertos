# Puertos

simple ruby gem that fetches the forecast swell data for Barcelona from Puertos del Estado

## Installation

Add this line to your application's Gemfile:

    gem 'puertos'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install puertos

## Usage

Make sure you require the gem before:

    require 'puertos'

and then there is the one and only command available

    Puertos.fetch

returns the swell and wind data for the next 72 hours


## Contributing

1. Fork it ( https://github.com/[my-github-username]/pont_del_petroli/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
