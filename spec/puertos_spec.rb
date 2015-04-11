require 'spec_helper'

describe Puertos::Parser do
  let(:subject) { Puertos::Parser.new }

  describe '#run' do
    let(:forecast) { subject.run }

    it 'returns an array' do
      expect(forecast).to be_an Array
    end

    it 'objects of the array are forecast data' do
      expect(forecast.first).to be_a Puertos::ForecastData
    end

    it 'returns forecast data for the next 72 hours' do
      expect(forecast.size).to eq 73
    end
  end
end