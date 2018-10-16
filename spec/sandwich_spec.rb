Sandwich = Struct.new(:taste, :toppings, :slice, :sauce)

RSpec.describe 'An ideal sandwich' do
    let(:sandwich) { Sandwich.new('delicious', [], '12', 'ketchup') }

    it 'is delicious' do
        taste = sandwich.taste

        expect(taste).to eq('delicious')
    end

    it 'lets me add toppings' do
        sandwich.toppings << 'cheese'
        toppings = sandwich.toppings

        expect(toppings).not_to be_empty
    end

    it 'has 12 slice' do
        slice = sandwich.slice

        expect(slice).to eq('12')
    end

    it 'has Mustard or Ketchup sauce' do
        sauce = sandwich.sauce

        expect(sauce).to eq('mustard').or eq('ketchup').or eq('mayonaise')
    end

end