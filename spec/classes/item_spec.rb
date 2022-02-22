require_relative '../../classes/item'
require 'date'

describe Item do
  context 'When created' do
    item = Item.new('2020-12-04')
    it 'should have a date' do
      expect(item.publish_date).to be_instance_of(Date)
    end
  end

  describe '#can_be_archived?' do
    context 'when called then' do
      item = Item.new('2007-12-04')

      it 'should return true if the publish_date is older than 10' do
        expect(item.can_be_archived?).to be true
      end
    end
  end

  describe '#move_to_archive' do
    context 'date older than 10' do
      item = Item.new('2000-12-04')
      it 'should set archive to true' do
        expect(item.move_to_archive).to be true
      end
    end
    context 'date not older than 10' do
      item = Item.new('2020-12-04')
      it 'should set archive to false' do
        expect(item.move_to_archive).to be false
      end
    end
  end

  describe '#genre' do
    context 'when added' do
      item = Item.new('2021-05-22')
      it 'should cointain genre_mock' do
        genre_mock = double('Pop')
        allow(genre_mock).to receive_message_chain(:items, :include?, :push)
        item.genre = genre_mock
        expect(item.genre).to eq genre_mock
      end
    end
  end

  describe '#author' do
    context 'when added' do
      item = Item.new('2000-05-05')
      it 'should own an author' do
        author_mock = double('Neruda')
        allow(author_mock).to receive_message_chain(:items, :include?, :push)
        item.author = author_mock
        expect(item.author).to eq author_mock
      end
    end
  end
  describe '#label' do
    context 'when added' do
      item = Item.new('2017-05-09')
      it 'should add label' do
        label_mock = double('It')
        allow(label_mock).to receive_message_chain(:items, :include?, :push)
        item.label = label_mock
        expect(item.label).to eq label_mock
      end
    end
  end
end
