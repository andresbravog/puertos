require "puertos/version"

module Puertos
  autoload :SwellData, "puertos/swell_data"
  autoload :WindData, "puertos/wind_data"
  autoload :RowParser, "puertos/row_parser"
  autoload :Parser, "puertos/parser"

  module Report
    autoload :Request, "puertos/report/request"
  end

  # public interface for getting the forecast data
  #
  # @return [array] of ForecastData with the next 72 hours of forecast
  def self.fetch
    Parser.new.run
  end
end
