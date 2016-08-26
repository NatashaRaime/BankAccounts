require 'csv'

class Owner
  attr_accessor :account_id

  def initialize(account_id)

    Owner.new(@account_id)
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

    def self.accounts
      #accounts = [ ]
      map.collect{ |x| x + address[x] }


      #accounts = { }
      #map[index] << addy[index]
      #map[index] << address[0..index.length]
      #map[index]<<address[1..index.length]
    end
      return accounts
end

    puts Owner.map
    puts
    puts
    puts Owner.addy
    puts
    puts
    puts Owner.accounts
