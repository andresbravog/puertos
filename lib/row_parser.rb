require "wind_data"
require "swell_data"

module Puertos
  class RowParser

    attr_reader :row
    
    def initialize row
      @row = row
    end

    def run
      timestamp      = read_column(1)
      wind           = create_wind_data
      total_swell    = create_total_swell_data
      wind_swell     = create_wind_swell_data
      ground_swell_1 = create_ground_swell_data_1
      ground_swell_2 = create_ground_swell_data_2

      ForecastData.new wind, total_swell, wind_swell, ground_swell_1, ground_swell_2
    end

  private

    def create_wind_data
      Puertos::WindData.new speed: read_column(5), direction: read_column(6)
    end

    def create_total_swell_data
      Puertos::SwellData.new height: read_column(7), direction: read_column(8), avg_period: read_column(10), peak_period: read_column(9)
    end

    def create_wind_swell_data
      Puertos::SwellData.new height: read_column(11), direction: read_column(12)
    end

    def create_ground_swell_data_1
      Puertos::SwellData.new height: read_column(13), direction: read_column(14), avg_period: read_column(15)
    end

    def create_ground_swell_data_2
      Puertos::SwellData.new height: read_column(16), direction: read_column(17), avg_period: read_column(18)
    end

    def read_column number
      row.css("td:nth-child(#{number})").text
    end
  end

  class ForecastData < Struct.new :wind, :total_swell, :wind_swell, :ground_swell_1, :ground_swell_2
  end
end