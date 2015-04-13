require 'spec_helper'

describe Puertos::SwellData do
  let(:subject) { Puertos::SwellData.new height: '3', direction: 'E', avg_period: '3', peak_period: '5'}

  describe '#height' do
    it 'returns the swell height' do
      expect(subject.height).to eq '3'
    end
  end

  describe '#height_unit' do
    it 'returns the swell height_unit' do
      expect(subject.height_unit).to eq 'm'
    end
  end

  describe '#direction' do
    it 'returns the swell direction' do
      expect(subject.direction).to eq 'E'
    end
  end

  describe '#avg_period' do
    it 'returns the swell avg_period' do
      expect(subject.avg_period).to eq '3'
    end
  end

  describe '#peak_period' do
    it 'returns the swell peak_period' do
      expect(subject.peak_period).to eq '5'
    end
  end

  describe '#period_unit' do
    it 'returns the swell period_unit' do
      expect(subject.period_unit).to eq 's'
    end
  end

end