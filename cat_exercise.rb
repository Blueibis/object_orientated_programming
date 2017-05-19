class Cat

  attr_accessor :eats_at, :meow

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time == 0
      "#{@meal_time + 12} AM"
    elsif @meal_time == 12
      "#{@meal_time} PM"
    elsif @meal_time < 12
      "#{@meal_time} AM"
    else "#{@meal_time -12} PM"
    end
   end

  def meow
    "My hooman calls me #{@name}. I demand #{@preferred_food} at #{eats_at}"
  end

end

mugs = Cat.new("Mugs", "tuna", 23)
puts mugs.meow
scarface = Cat.new("Scar-Face", "bricks", 12)
puts scarface.meow
