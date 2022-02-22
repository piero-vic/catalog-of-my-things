require_relative '../../classes/game.rb'

describe Game do
  context 'When created' do
    game = Game.new(publish_date: '2022-02-01', multiplayer: true, last_played_at: '2022-02-22')
    it 'should be a child of Item class' do
      expect(game).to be_a_kind_of(Item)
    end
    it 'should have last played at' do
      expect(game.last_played_at).to eq Date.parse('2022-02-22')
    end
  end
  describe '#can_be_archived?' do
    context 'When publish date is older than 10 years and last played at older than 2 years' do
      game = Game.new(publish_date: '2000-02-22', multiplayer: true, last_played_at: '2019-02-22')
      it 'should return true' do
        expect(game.can_be_archived?).to be true
      end
    end
    context 'When publish date is older than 10 years and last played at not older than 2 years' do
      game = Game.new(publish_date: '2000-02-22', multiplayer: true, last_played_at: '2021-02-22')
      it 'should return false' do
        expect(game.can_be_archived?).to be false
      end
    end
    context 'When publish date is not older than 10 years and last played at not older than 2 years' do
      game = Game.new(publish_date: '2020-02-22', multiplayer: true, last_played_at: '2021-02-22')
      it 'should return false' do
        expect(game.can_be_archived?).to be false
      end
    end
    context 'When publish date is not older than 10 years and last played at older than 2 years' do
      game = Game.new(publish_date: '2020-02-22', multiplayer: true, last_played_at: '2018-02-22')
      it 'should return false' do
        expect(game.can_be_archived?).to be false
      end
    end
  end
end