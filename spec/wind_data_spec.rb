require 'spec_helper'

describe Puertos::WindData do
  let(:subject) { Puertos::WindData.new speed: '2.3', direction: 'E' }

  describe '#speed' do
    it 'returns the wind speed' do
      expect(subject.speed).to eq '2.3'
    end
  end

  describe '#direction' do
    it 'returns the wind direction' do
      expect(subject.direction).to eq 'E'
    end
  end

  describe '#unit' do
    it 'returns the wind unit' do
      expect(subject.unit).to eq 'm/s'
    end
  end

end