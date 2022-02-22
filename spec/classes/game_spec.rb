require_relative '../../classes/game.rb'

describe Game do
  context 'When created' do
    game = Game.new(publish_date: '2022-02-01', multiplayer: true, last_played_at: '2022-02-22')
    it 'should be a child of Item class' do
      expect(game).to be_a_kind_of(Item)
    end
  end
end