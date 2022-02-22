require_relative '../../classes/author.rb'

describe Author do
  context 'When Created' do
    author = Author.new('Jane', 'Doe')
    it 'should have first_name' do
      expect(author.first_name).to eq 'Jane'
    end
    it 'should have last_name' do
      expect(author.last_name).to eq 'Doe'
    end
    it 'should have an empty items array' do
      expect(author.items).to be_empty
    end
  end
end