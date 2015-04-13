require "wind_data"
require "swell_data"

module Puertos
  # The Parser is responsible of fetching the data from Puertos del Estado
  # and return it as ruby objects
  class RowParser
    attr_reader :row

    def initialize row
      @row = row
    end

    # parses each input line and returns a ForecastData object
    #
    # @return [ForecastData] with all the relevant information
    def run
      timestamp      = create_timestamp
      wind           = create_wind_data
      total_swell    = create_total_swell_data
      wind_swell     = create_wind_swell_data
      ground_swell_1 = create_ground_swell_data_1
      ground_swell_2 = create_ground_swell_data_2

      ForecastData.new timestamp, wind, total_swell, wind_swell, ground_swell_1, ground_swell_2
    end

  private

    def create_timestamp
      Time.parse read_column(1)
    end

    def create_wind_data
      Puertos::WindData.new speed: read_column(4), direction: read_column(5)
    end

    def create_total_swell_data
      Puertos::SwellData.new height: read_column(6), direction: read_column(7), avg_period: read_column(9), peak_period: read_column(8)
    end

    def create_wind_swell_data
      Puertos::SwellData.new height: read_column(10), direction: read_column(11)
    end

    def create_ground_swell_data_1
      Puertos::SwellData.new height: read_column(12), direction: read_column(13), avg_period: read_column(14)
    end

    def create_ground_swell_data_2
      Puertos::SwellData.new height: read_column(15), direction: read_column(16), avg_period: read_column(17)
    end

    def read_column number
      row.css("td:nth-child(#{number})").text.strip
    end
  end

  class ForecastData < Struct.new :timestamp, :wind, :total_swell, :wind_swell, :ground_swell_1, :ground_swell_2
  end
end