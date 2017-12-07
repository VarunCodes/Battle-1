describe Player do
  subject(:stanley) {Player.new('Stanley')}

  describe '#name' do
    it 'should return the name of the player' do
      expect(subject.name).to eq('Stanley')
    end
  end
end
