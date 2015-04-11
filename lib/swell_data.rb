module Puertos
  class SwellData
    #remove after upgrading to ruby 2.1
    def initialize(height: 1, direction: 'e', avg_period: nil, peak_period: nil)
      @height      = height
      @direction   = direction
      @avg_period  = avg_period
      @peak_period = peak_period
    end
  end
end