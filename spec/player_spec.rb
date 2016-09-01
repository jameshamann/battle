require 'player'

describe Player do
  subject(:lawrence) {Player.new('Lawrence')}

  describe '#name' do
    it 'retruns the name' do
      expect(lawrence.name).to eq 'Lawrence'
    end
  end
end
