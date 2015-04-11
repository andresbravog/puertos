require 'spec_helper'

describe Puertos do
  let(:subject) { Puertos }

  describe '#run' do
    let(:forecast) { subject.fetch }

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