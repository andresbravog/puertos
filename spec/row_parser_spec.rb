require 'spec_helper'

describe Puertos::RowParser do
  let(:row) do
    Nokogiri::HTML(open(Puertos::Parser::DATA_URL)).css(Puertos::Parser::CSS_ROWS_SELECTOR).last
  end

  let(:subject) { Puertos::RowParser.new row }

  describe '#run' do
    let(:forecast) { subject.run }

    it 'has a proper timestamp' do
      expect(forecast.timestamp).to be_a Time
    end

    it 'has wind data' do
      expect(forecast.wind).to be_a Puertos::WindData
    end

    it 'has total swell data' do
      expect(forecast.total_swell).to be_a Puertos::SwellData
    end

    it 'has wind swell data' do
      expect(forecast.wind_swell).to be_a Puertos::SwellData
    end

    it 'has ground swell data' do
      expect(forecast.ground_swell_1).to be_a Puertos::SwellData
    end

    it 'has secondary swell data' do
      expect(forecast.ground_swell_2).to be_a Puertos::SwellData
    end
  end
end