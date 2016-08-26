class SavingsAccount < Owner::Account
  BALANCE_MIN += 10
  INTEREST_RATE = 0.0025
  attr_accessor :interest_rate

    def initialize
      super()
    end

    def interest
      super()
      interest = @balance * INTEREST_RATE
      total = @balance + (@balance * INTEREST_RATE)
        @balance = total
        puts "Interest Accrued: #{interest}"
        puts "Your Balance with accrued interest: #{total}"
      return @balance
    end

    def balance_min(balance)
      super()
      if balance < BALANCE_MIN
        raise ArgumentError.new("warning, balance below minimum".colorize(:red))
        break
      end
      return @balance
    end

    def withdraw(val)
      super()
      val += 2
      if val > @balance + BALANCE_MIN
        raise ExceptionError.new("Transaction Denied").colorize(:red)
        puts
        puts "Your current balance is:$#{ @balance }".colorize(:blue)
        break
      elsif
      val < @balance + BALANCE_MIN
      Bank::Details.withdraw(val)
      puts "Withdrawl successful, Your new balance is: $#{ @balance }".colorize(:blue)
      end
      return @balance
    end
end
