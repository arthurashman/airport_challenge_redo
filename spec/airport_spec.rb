require 'airport'

describe Airport do
  subject(:airport) { described_class.new }
  let(:plane_double) { double :plane }
  describe '#instruct_landing' do
    it 'can instruct a plane to land' do
      expect(airport).to respond_to(:instruct_landing).with(1).argument 
    end
  end

  describe '#clear_takeoff' do
    it 'can clear a plane for takeoff' do
      expect(airport).to respond_to(:clear_takeoff).with(1).argument
    end
  end
  
  context 'when weather is not stormy' do
    before(:each) do
      allow(airport).to receive(:runway_safe?).and_return true
    end

    it 'lands the plane at the airport' do
      expect(airport.instruct_landing(plane_double)).to eq [plane_double]
    end

    it 'logs the departure of a plane from stands' do
      airport.instruct_landing(plane_double)
      expect { airport.clear_takeoff(plane_double) }.to change { airport.stands.length }.from(1).to(0)
    end
  end

  context 'when weather is stormy' do
    before(:each) do
      allow(airport).to receive(:runway_safe?).and_return false
    end

    it 'does not allow landing' do
      expect { airport.instruct_landing(plane_double) }.to raise_error("Unsafe landing conditions at runway")
    end

    it 'does not allow takeoff' do
      expect { airport.clear_takeoff(plane_double) }.to raise_error("Unsafe take off conditions at runway")
    end
  end
end