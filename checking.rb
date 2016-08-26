require_relative 'owner.rb'
require_relative 'bank-details.rb'
require 'csv'


class Checking < BankAccount
  BALANCE_MIN = 0
  WITHDRAWL_FEE = 1
  CHECK_FEE = 2

  def initialize
    super()
    @account = Account.new(balance)
    @balance += 0
  end

    def check_withdraw(val)
      super()
      count = 0
      #self.class::BALANCE_MIN -= 10
      val = val + CHECK_FEE
      if @balance < val
        raise ArguementError.new("Transation Denied")
      elsif @balance >= val && count > 3
        raise ArgumentError.new("You have exceeded the number of free check-transactions: $2 fee applied")
        @balance = Bank::Account.withdraw(val)
      elsif @balance > (val - CHECK_FEE)
        @balance = Bank::Account.withdraw(val - CHECK_FEE)
      end
        count += 1
      return @balance
    end

    def reset_checks(count)
      super()
      count = 0
    end

    def withdraw(val)
      super()
      val += WITHDRAWL_FEE
      Bank::Account.withdraw(val)
    end

end
