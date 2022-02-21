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
end
