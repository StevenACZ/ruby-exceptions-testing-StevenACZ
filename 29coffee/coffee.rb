class OverloadError < StandardError
end

class IngredientError < StandardError
end

class CoffeeMachine
  attr_reader :capacities, :current, :count

  def initialize(capacities = nil)
    @capacities = capacities || { coffee: 10, water: 10, milk: 10 }
    @current = { coffee: 0, water: 0, milk: 0 }
    @count = 0
  end

  def fill(ingredient:, amount:)
    if @current[ingredient] + amount > @capacities[ingredient]
      available = @capacities[ingredient] - @current[ingredient]
      raise OverloadError, "Too much! Only #{available} free"
    else
      @current[ingredient] += amount
    end
  end

  def make_coffee(ingredients)
    if ingredients[:water].zero? && ingredients[:milk].zero?
      raise IngredientError, "You need to specify water and/or milk"
    end

    check_capacity(ingredients)
    ingredients.each do |ingredient, value|
      @current[ingredient] -= value
    end
    @count += 1
  end

  private

  def check_capacity(ingredients)
    ingredients.each do |ingredient, value|
      raise IngredientError, "Not enough #{ingredient}" if value > @current[ingredient]
    end
  end
end
