require 'weather'

describe Weather do
  subject(:weather) { described_class.new }

  describe '#is_stormy?' do
    it 'returns true or false' do
      expect(weather.is_stormy?).to be(true).or be(false)
    end
  end
end