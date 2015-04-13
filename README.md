# Puertos

simple ruby gem that fetches the forecast swell data for Barcelona from Puertos del Estado

[![Gem Version](https://badge.fury.io/rb/puertos.svg)](http://badge.fury.io/rb/puertos)
[![Build Status](https://travis-ci.org/rgalindo33/puertos.svg?branch=master)](https://travis-ci.org/rgalindo33/puertos)
[![Code Climate](https://codeclimate.com/github/rgalindo33/puertos/badges/gpa.svg)](https://codeclimate.com/github/rgalindo33/puertos)
[![Test Coverage](https://codeclimate.com/github/rgalindo33/puertos/badges/coverage.svg)](https://codeclimate.com/github/rgalindo33/puertos)

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

returns the swell and wind data for the next 72 hours, as an ForecastData array

ForecastData has the following methods:

    forecast_data_instance.timestamp

returns the time of the forecast as a Time object

    forecast_data_instance.wind

returns a Puertos::WindData object, for which the following methods are available

    wind_data_instance.speed     => "3.4"
    wind_data_instance.direction => "SSE" # shows propagation or "blowing to" direction
    wind_data_instance.unit      => "m/s"

    forecast_data_instance.total_swell

returns a Puertos::SwellData object, which has the sum of all swells.

    forecast_data_instance.wind_swell

returns a Puertos::SwellData object, which represent the swell generated by nearby winds. Wind Swell is composed by irregular short waves that are being generated by the wind and are still growing

    forecast_data_instance.ground_swell_1

returns a Puertos::SwellData object, with the primary ground swell data

    forecast_data_instance.ground_swell_2

returns a Puertos::SwellData object, with the secondary ground swell data


For every SwellData object, following methods are available

    wind_data_instance.height      => "3.4" #  equivalent to the mean value of the 1/3rd highest waves
    wind_data_instance.height_unit => "m"
    wind_data_instance.direction   => "NNW"
    wind_data_instance.avg_period  => "8" # the mean of all periods
    wind_data_instance.peak_period => "10" # the period of the most energetic wave group
    wind_data_instance.period_unit => "s"



## Contributing

1. Fork it ( https://github.com/rgalindo33/puertos/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
