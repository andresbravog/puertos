require "puertos/version"
require "parser"

module Puertos
  # public interface for getting the forecast data
  #
  # @return [array] of ForecastData with the next 72 hours of forecast
  def self.fetch
    Parser.new.run
  end
end
