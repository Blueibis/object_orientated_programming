class BankAccount

  attr_accessor :deposit, :withdraw

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
    puts "Balance = $#{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    puts "Balance = $#{@balance}"
  end

  def gain_interest
    @balance = (1 + @interest_rate) * @balance
    puts "After interest, your balance = $#{@balance.round}"
  end
end

jennie = BankAccount.new(10000, 0.2)
jennie.withdraw(5000)
jennie.deposit(5000)
jennie.gain_interest
