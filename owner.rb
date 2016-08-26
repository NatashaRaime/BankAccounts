require 'csv'

  class Owner
  def initialize
  end

  def self.map
    map = { }
    CSV.read('support/account_owners.csv').each do |line|
    map[line[0]] = line[1..line.length]
  end
    return map
  end

    def self.addy
      address = { }
      CSV.read('support/owners.csv').each do |row|
      address[row[0]] = row[1..row.length]
      end
      return address
    end
  end

#here I am trying to use the collect method
    # def self.accounts
    #   #accounts = [ ]
    #   map.collect{ |x| x + address[x] }
      # return accounts


    # puts Owner.map
    # puts
    # puts Owner.addy
    # puts
    # puts Owner.accounts
