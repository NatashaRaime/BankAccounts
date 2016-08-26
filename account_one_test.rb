require_relative 'owner'
require_relative 'bank-details'
require_relative 'checking'
require_relative 'savings'

require 'colorize'
require 'csv'
def test_withdrawl
  if balance - withdrawl(val) == 3
    return true
  end
end

def test_deposit
  if deposit < 0
    raise ArgumentError.new("nope")
  end
end

def test_init
  if Account.new.balance < 0
    raise ArgumentError.new("money is required to bank here")
  end
end



puts Bank::Owner.
puts Bank::Account.find("id")
puts Bank::Account.all
puts Bank::Owner.addy_first
puts Bank::Owner.find("1213")
