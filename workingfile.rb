  require 'colorize'
  require 'colorized_string'
  require 'csv'

  module Bank
    class Account

      attr_accessor :name, :balance

      def initialize(name, balance, account_id = Random.rand(111111..999999))

        @name = name
        @balance = balance
        @account_id = account_id

      end

      def self.all
       accounts = { }
        CSV.read('support/accounts.csv').each do |line|
         accounts[line[0]] = line[1..line.length]
         #accounts[line[0]] = Account.new(line[0], " ", line[1],)
        end
       return accounts
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



      n = Account.new("natasha ewing", 2800, true)
      n.print_status
      n.deposit(1800)
      n.withdrawl(800)
      n.withdrawl(7800)
      n.print_status

    end
  end
