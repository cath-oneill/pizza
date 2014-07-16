class Pizza
  attr_reader :toppings, :expected_delivery_time

  def initialize(toppings=[Topping.new("cheese")], now=Time.now)
    @toppings = toppings
    @expected_delivery_time = now + 30*60
  end

  def vegetarian?
    self.toppings.all?{|each_topping| each_topping.vegetarian}
  end

  def add_topping(topping)
    self.toppings << topping
  end
end

class Topping
  attr_accessor :name, :vegetarian

  def initialize(name, vegetarian: false)
    @name=name
    @vegetarian=vegetarian
  end
end
