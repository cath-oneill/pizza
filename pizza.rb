class Pizza
  attr_reader :toppings

  def initialize(toppings=[Topping.new("cheese")])
    @toppings = toppings
  end

  def vegetarian?
    self.toppings.all?{|each_topping| each_topping.vegetarian}
  end
end

class Topping
  attr_accessor :name, :vegetarian

  def initialize(name, vegetarian: false)
    @name=name
    @vegetarian=vegetarian
  end
end
