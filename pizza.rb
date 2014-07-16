class Pizza
  attr_reader :toppings, :expected_delivery_time, :actual_delivery_time

  def initialize(toppings=[Topping.new("cheese")], now=Time.now)
    @toppings = toppings
    @expected_delivery_time = now + 30*60
    @actual_delivery_time
  end

  def vegetarian?
    self.toppings.all?{|each_topping| each_topping.vegetarian}
  end

  def add_topping(topping)
    self.toppings << topping
  end

  def deliver!(now=Time.now)
    @actual_delivery_time = now.to_i
  end

  def late?
    @actual_delivery_time > @expected_delivery_time
  end
end

class Topping
  attr_accessor :name, :vegetarian

  def initialize(name, vegetarian: false)
    @name=name
    @vegetarian=vegetarian
  end
end
