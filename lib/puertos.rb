require "puertos/version"
require "row_parser"
require 'open-uri'
require 'nokogiri'

module Puertos
  class Parser
    DATA_URL = 'http://static.puertos.es/pred_simplificada/Predolas/Tablas/Med/BAR.html'
    CSS_ROWS_SELECTOR = 'center center table tr'

    def run
      rows = Nokogiri::HTML(open(DATA_URL)).css CSS_ROWS_SELECTOR

      rows.drop(2).map do |row|
        Puertos::RowParser.new(row).run
      end
    end

  end
end
