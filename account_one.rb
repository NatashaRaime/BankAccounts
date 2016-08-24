require 'colorize'
require 'money'

module Bank
  class Account

    attr_accessor :name, :balance

    def initialize(name, balance, account_id = Random.rand(111111..999999), print = false)
      @name = name
      @balance = balance
      @account_id = account_id

      if print
        print_status
      end

    end

    def to_money # <= instance method
    # in the line below, `total` is invoking the instance method above
    @balance = "$" + sprintf("%0.02f", @balance / 100)
    end

    # def to_cash
    #   @balance = "$" + sprintf("%0.02f", @balance / 100)
    # end

    def print_status
    puts "Welcome #{ @name }, your new account number is: #{ @account_id }".colorize(:light_blue)
    puts "Your current balance is:".colorize(:blue)
    puts "#{ @balance }".colorize(:green)
    end


     def deposit(val)
       @balance = @balance + val
       puts @balance 
       return @balance
     end

    def withdrawl(val)
      if val > @balance
        puts "We are unable to process your request at this time."
      else
       @balance = @balance - val
       puts @balance
      end
      return @balance
    end
  end

n = Account.new("natasha ewing", 2800)
n.print_status
puts @balance
n.deposit(1800)
puts @balance
n.withdrawl(800)
puts @balance
n.withdrawl(7800)
puts @balance

end
