class Rover

  attr_accessor :read_instruction, :turn  # => nil

  def initialize(x_position, y_position, direction)
    @x_position = x_position                         # => 1
    @y_position = y_position                         # => 1
    @direction = direction                           # => "N"
  end                                                # => :initialize

  def read_instruction(instructions)
      @input = instructions.split("")                # => ["M", "M", "M", "L", "L", "M", "R", "M"]
          @input.each do |letter|                    # => ["M", "M", "M", "L", "L", "M", "R", "M"]
            if letter == "L"                         # => false, false, false, true, true, false, false, false
              turn("L")                              # => "W", "S"
            elsif letter == "R"                      # => false, false, false, false, true, false
              turn("R")                              # => "W"
            elsif letter == "M"                      # => true, true, true, true, true
              move                                   # => 2,    3,    4,    3,    0
            else
              puts "Error: Command does not exist."
            end                                      # => 2, 3, 4, "W", "S", 3, "W", 0
          end                                        # => ["M", "M", "M", "L", "L", "M", "R", "M"]
  end                                                # => :read_instruction

  def turn(letter)
        if letter == "L"     # => true, true, false
          set_direction_l    # => "W", "S"
        elsif letter == "R"  # => true
        set_direction_r      # => "W"
        else
        end                  # => "W", "S", "W"
  end                        # => :turn


  def set_direction_l
    if @direction == "N"     # => true, false
      @direction = "W"       # => "W"
    elsif @direction == "W"  # => true
      @direction = "S"       # => "S"
    elsif @direction == "S"
      @direction = "E"
    else
      @direction = "N"
    end                      # => "W", "S"
  end                        # => :set_direction_l

  def set_direction_r
    if @direction == "N"     # => false
      @direction = "E"
    elsif @direction == "E"  # => false
      @direction = "S"
    elsif @direction == "S"  # => true
      @direction = "W"       # => "W"
    else
      @direction = "N"
    end                      # => "W"
  end                        # => :set_direction_r

  def move
    if @direction == "N"     # => true, true, true, false, false
      @x_position += 1       # => 2, 3, 4
    elsif @direction == "S"  # => true, false
      @x_position -= 1       # => 3
    elsif @direction == "E"  # => false
      @y_position += 1
    else
      @y_position -= 1       # => 0
    end                      # => 2, 3, 4, 3, 0
 end                         # => :move

  def report
    puts "x:#{@x_position} y:#{@y_position} #{@direction}"  # => nil
  end                                                       # => :report

end  # => :report

rover1 = Rover.new(1, 1, "N")        # => #<Rover:0x005558ae8fe128 @x_position=1, @y_position=1, @direction="N">
rover1.read_instruction("MMMLLMRM")  # => ["M", "M", "M", "L", "L", "M", "R", "M"]
rover1.report                        # => nil

# >> x:3 y:0 W
