require 'open-uri'
require 'nokogiri'

module Puertos
  class Parser
    #@private
    DATA_URL = 'http://static.puertos.es/pred_simplificada/Predolas/Tablas/Med/BAR.html'
    #@private
    CSS_ROWS_SELECTOR = 'center center table tr'

    # uses the row parser to parse line by line the forecast table
    #
    # @return [Array] Array of ForecastData with all the relevant information
    def run
      rows = Nokogiri::HTML(open(DATA_URL)).css CSS_ROWS_SELECTOR

      rows.drop(2).map do |row|
        Puertos::RowParser.new(row).run
      end
    end
  end
end
