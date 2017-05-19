class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
    puts "You leveled up! Gained a life."
  end

  def collect_treasure
      @gold_coins += 1
      puts "Counting coins...you have #{@gold_coins} gold coins."
      level_up if @gold_coins % 10 == 0
  end

  def do_battle(damage)
    @health_points -= damage
    puts "You take #{damage} damage. #{@health_points} HP remaining."
    if @health_points < 1
      puts "Lost a life. #{@lives} lives remaining."
      @lives -= 1
      @health_points = 10
    elsif @lives == 0
      puts "You're out of lives.\nGameover"
      restart
    else
    end
  end
    def restart
      puts "Once again into the breach!\nYou set off with renewed spirit."
      @gold_coins = 0
      @health_points = 10
      @lives = 5
    end
end

jennie = Player.new
10.times do jennie.collect_treasure
end
25.times do jennie.do_battle(Random.rand(1..5))
end
