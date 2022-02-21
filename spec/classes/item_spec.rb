require_relative '../../classes/item.rb'

describe Item do
  context 'When created' do
    item = Item.new("2020-12-04")
    it 'should have a date' do
      expect(item.publish_date).to eql "2020-12-04"
    end
  end
end
