require 'colorize'
require 'colorized_string'
require 'csv'

module Bank
  class Account

    attr_accessor :account_id, :balance

      def initialize(balance, print)
    #   account_id = Random.rand(111111..999999)
       @accounts = accounts
       @name = name
       @balance = balance

      end

       def self.all
        accounts = { }
         CSV.read('support/accounts.csv').each do |line|
          accounts[line[0]] = line[1..line.length]
          #accounts[line[0]] = Account.new(line[0], " ", line[1],)
         end
        return accounts
       end

      def self.find(id)
        puts Bank::Account.all(id)
        return Bank::Account.all(id)
      end


      def print_status
        puts "Your current balance is: $#{ @balance }".colorize(:blue)
        puts
      end

      def deposit(val)
        @balance += val
        puts "Thank you for your deposit in the amount of $#{val}".colorize(:blue)
        puts "Updated Account Balance: $#{ @balance }".colorize(:blue)
        return @balance
      end

      def withdrawl(val)
        if val > @balance
          puts "Your available balance is less than the requested amount.".colorize(:red)
          puts "Your current balance is:$#{ @balance }".colorize(:blue)
        else
          @balance -= val
          puts "Withdrawl successful, Your new balance is: $#{ @balance }".colorize(:blue)
        end
        return @balance
      end
  end
end
