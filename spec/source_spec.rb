require_relative '../../classes/item'
require_relative '../../classes/source'

describe Source do
    context 'When created' do
        source = source.new('test', 'web')
        it 'should have a name' do
          expect(source.name).to eql 'test'
        end

        it 'should have and empty items list' do
          expect(source.items).to be_empty
        end
    end
end