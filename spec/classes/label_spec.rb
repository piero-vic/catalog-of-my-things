require_relative '../../classes/label'

describe Label do
  context 'When created' do
    label = Label.new('Label1', 'red')
    it 'should have a title' do
      expect(label.title).to eql 'Label1'
    end
    it 'should have a color' do
      expect(label.color).to eql 'red'
    end
    it 'should have and empty items list' do
      expect(label.items).to be_empty
    end
  end
end
