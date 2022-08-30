require 'label_maker'

RSpec.describe LabelMaker, '#get_equivalent_sequence' do
  context 'with a non-integer input' do
    it 'returns nil' do
      result = LabelMaker.get_equivalent_sequence('abc')
      expect(result).to eq nil
    end
  end

  context 'with an integer less than zero' do
    it 'returns nil' do
      result = LabelMaker.get_equivalent_sequence(-1)
      expect(result).to eq nil
    end
  end

  context 'with an integer input greater than zero' do
    context 'and when integer is less than alphabet count' do
      it 'returns corresponding string' do
        result = LabelMaker.get_equivalent_sequence(1)
        expect(result).to eq 'A'
      end
    end

    context 'and when integer is greater than alphabet count' do
      it 'returns an appended string' do
        result = LabelMaker.get_equivalent_sequence(100)
        expect(result).to eq 'CV'
      end
    end
  end
end