require_relative 'account_one'
require 'colorize'
require 'bigdecimal'
require 'money'

natashaa = Bank::Account.new("Natasha Ewing", "1700.00")
puts natashaa.deposit(800)+natashaa.withdrawl("900")
puts natashaa.b_lance

natashaa.print_status

natasha = Money::Currency.new(5000, "USD")
puts natasha
