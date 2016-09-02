require 'player'

describe Player do
  subject(:lawrence) {Player.new('Lawrence')}

  describe '#name' do
    it 'returns the name' do
      expect(lawrence.name).to eq 'Lawrence'
    end
  end

  describe '#hp' do
    it 'initializes with 100 hp' do
      expect(lawrence.hp).to eq 100
    end

    it 'reduces by 10 when attacked' do
      expect{lawrence.attack}.to change{lawrence.hp}.by -10
    end
  end

end
