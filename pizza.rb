class Pizza
  attr_reader :toppings, :expected_delivery_time, :actual_delivery_time

  def initialize(toppings=nil, now=Time.now)
    @toppings = toppings
    @expected_delivery_time = (now + 30*60).to_i
    @actual_delivery_time
    @toppings = [Topping.new("cheese", vegetarian: true)] if @toppings.nil?
  end

  def vegetarian?
    @toppings.all?{|each_topping| each_topping.vegetarian}
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
