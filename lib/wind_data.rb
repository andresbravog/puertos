module Puertos
  class WindData
    attr_reader :speed, :direction, :unit

    def initialize(speed: nil, direction: nil, unit: 'm/s')
      @speed     = speed
      @direction = direction
      @unit      = unit
    end
  end
end