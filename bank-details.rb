require_relative 'owner.rb'
require 'colorize'
require 'csv'

module Bank
  BALANCE_MIN = 0
  WITHDRAWL_FEE = 0
  class Account < Owner


    attr_accessor :balance, :account_id

    def initialize(balance)
      @balance = balance
      @account_id = Random.rand(111111.999999)
    end


    def self.all
      all_accounts = { }
      CSV.read('support/accounts.csv').each do |line|
        all_accounts[line[0]] = line[1..line.length]
      end
      puts all_accounts
      return all_accounts
    end

    def self.find(id)
      found = { }
      CSV.read('support/accounts.csv').each do |i|
        found[(id)] = i[1..i.length]
      end
      puts found
      return found
    end

  def print_status
    puts "Your current balance is: $#{ @balance }".colorize(:blue)
    puts "Hello, Your Account ID is #{@account_id}".colorize(:blue)
  end

  def deposit(val)
    @balance += val
    puts "Thank you for your deposit in the amount of $#{val}".colorize(:blue)
    puts "Updated Account Balance: $#{ @balance }".colorize(:blue)
    return @balance
  end

  def withdraw(val)
    if @balance > val
      @balance -= val
      puts "Withdrawl successful, Your new balance is: $#{ @balance }".colorize(:blue)
    end
    return @balance
  end
  end
end

natasha = Bank::Account.new(8000)
natasha.deposit(500)
natasha.withdraw(200)
Bank::Account.find("1212")
puts Owner.map
puts Owner.addy 
