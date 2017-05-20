class Rover

  attr_accessor :read_instruction, :turn

  def initialize(x_position, y_position, direction)
    @x_position = x_position
    @y_position = y_position
    @direction = direction
  end

  def read_instruction(instructions)
      @input = instructions.split("")
      print @input
      @input.each do |order|
        if order == "L" || order == "R"
          turn
        else
          move
        end
      end
  end

  def turn
    @input.each do |letter|
        case letter == "L"
          when @direction == "N"
            @direction = "W"
          when @direction == "E"
            @direction = "N"
          when @direction == "S"
            @direction = "E"
          when @direction == "W"
            @direction = "S"
        end
        case letter == "R"
          when @direction == "N"
            @direction = "E"
          when @direction == "E"
            @direction = "S"
          when @direction == "S"
            @direction = "W"
          when @direction == "W"
            @direction = "N"
        end
      end
  end

  def move
    
  end
  def report
    puts "x:#{@x_position} y:#{@y_position} #{@direction}"
  end

end

rover1 = Rover.new(1, 1, "N")
rover1.read_instruction("LRR")
rover1.report
