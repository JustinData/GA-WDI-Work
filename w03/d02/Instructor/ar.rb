require 'pg'

class Table
  @@connection = PG.connect( dbname: "jeff" )

  def self.insert(data)
    @@connection.exec "insert into #{self.to_s.downcase} ( #{ transform_keys(data.keys) } ) values ( #{ transform_vals(data.values) } )"
  end

  def self.find(id)
    @@connection.exec("select * from #{self.to_s.downcase} where id=#{id}").first
  end

  private

  def self.transform_vals(values)
    values.map { |v| "\'#{v}\'" }.join(",")
  end

  def self.transform_keys(keys)
    keys.map(&:to_s).join(',')
  end
end

class Receipts < Table
end


Receipts.insert({:customer => "Jeff"})

Receipts.find(1)