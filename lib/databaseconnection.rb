require 'pg'

class DatabaseConnection
  def self.setup
    @connection = PG.connect(dbname: 'thermostat')
  end

  def self.query(sql)
    @connection.exec(sql)
  end
end
