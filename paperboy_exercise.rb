class Paperboy

   attr_reader :name, :experience, :earnings

   def initialize(name, experience, earnings)
     @name = name
     @experience = experience
     @earnings = earnings
     @quota = 50
   end

   def quota
     @quota += (@experience / 2)
   end

   def deliver(start_adress, end_adress)
     deliveries = end_adress - start_adress
     @experience += deliveries
     overtime = deliveries - @quota
      if deliveries > @quota
        @earnings = @earnings + (@quota * 0.25) + (overtime * 0.5)
      else
        puts "As quota has not been met, the fee is $2"
        @earnings = @earnings + (deliveries * 0.25) - 2
      end
      quota
   end

   def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end
end

jennie = Paperboy.new("Jennie", 0, 0)
jennie.deliver(5, 70)
jennie.report
jennie.deliver(1, 83)
jennie.report
