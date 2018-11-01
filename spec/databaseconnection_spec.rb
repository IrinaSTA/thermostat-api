require 'databaseconnection'

describe DatabaseConnection do
  describe '.setup' do
    it 'sets up a connection to a database through PG' do
      expect(PG).to receive(:connect).with(dbname: 'thermostat')
      DatabaseConnection.setup
    end
  end
  describe '.query' do
    it 'executes a query via PG' do
      connection = DatabaseConnection.setup
      expect(connection).to receive(:exec).with("SELECT * FROM state;")
      DatabaseConnection.query("SELECT * FROM state;")
    end
  end

end
