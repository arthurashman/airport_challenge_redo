require 'airport'

describe Airport do
  subject(:airport) { described_class.new }
  let(:plane_double) { double :plane }
  describe '#instruct_landing' do
    it 'can instruct a plane to land' do
      expect(airport).to respond_to(:instruct_landing).with(1).argument 
    end

    it 'lands the plane at the airport' do
      expect(airport.instruct_landing(plane_double)).to eq [plane_double]
    end
  end

  describe '#clear_takeoff' do
    it 'can clear a plane for takeoff' do
      expect(airport).to respond_to(:clear_takeoff).with(1).argument
    end
  end
end