require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end
end

describe Topping do
  it "exists" do
    expect(Topping).to be_a(Class)
  end

  describe '.initialize' do
    it "creates a new topping with a name" do
      topping = Topping.new("olives")
      expect(topping.name).to eq('olives')
    end
  end
end
