require_relative 'account_one.rb'
require_relative 'workingfile.rb'
require 'csv'

# def csv_data
#   csv_data = { }
#   CSV.read('support/accounts.csv').each do |line|
#     csv_data[line[0]] = line[1..line.length]
#   end
#   return csv_data
# end
# puts csv_data

# def self.all
#     accounts = { }
#     CSV.read('support/accounts.csv').each do |line|
#     accounts[line[0]] = line[1..line.length]
#     end
#     return accounts
# end
# print @account_id
# puts accounts

puts Bank::Account.find("id")
puts Bank::Account.all
puts Bank::Account.all
puts Bank::Account.find("1213")
