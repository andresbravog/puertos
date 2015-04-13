module Puertos
  class SwellData

    attr_reader :height, :height_unit, :direction, :avg_period, :peak_period, :period_unit

    def initialize(height: nil, height_unit: 'm', direction: nil, avg_period: nil, peak_period: nil, period_unit: 's')
      @height      = height
      @height_unit = height_unit
      @direction   = direction
      @avg_period  = avg_period
      @peak_period = peak_period
      @period_unit = period_unit
    end
  end
end