require_relative 'owner.rb'
require 'colorize'
require 'csv'

module Bank
  class Account

    attr_accessor :account_id, :balance

    def initialize(name, balance, id = Random.rand(111111..999999))
      @name = name
      @balance = balance
    end

    def self.all(id = line)
      all_accounts = { }
      CSV.read('support/accounts.csv').each do |line|
        all_accounts[line[0]] = line[1..line.length]
      end
      puts all_accounts
      return all_accounts
    end

    def self.find(id)
      found = [ ]
      found = all(id)
      puts found
      return found
    end


  def print_status
    puts "Your current balance is: $#{ @balance }".colorize(:blue)
  end

  def deposit(val)
    @balance += val
    puts "Thank you for your deposit in the amount of $#{val}".colorize(:blue)
    puts "Updated Account Balance: $#{ @balance }".colorize(:blue)
    return @balance
  end

  def withdraw(val)
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
