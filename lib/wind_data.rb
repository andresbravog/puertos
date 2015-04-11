module Puertos
  class WindData
    #remove after upgrading to ruby 2.1
    def initialize(speed: 1, direction: 'e')
      @speed     = speed
      @direction = direction
    end
  end
end