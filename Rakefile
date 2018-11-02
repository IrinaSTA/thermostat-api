require 'pg'
require_relative './lib/database_connection'

task :setup do
  puts 'Creating databases...'
  connection = PG.connect
  # connection.query("SELECT datname FROM pg_catalog.pg_database \
  #   WHERE lower(datname) = lower('thermostat');")
  connection.query('CREATE DATABASE thermostat;')
  connection = PG.connect(dbname: 'thermostat')
  connection.query("CREATE TABLE state(temperature INT4, \
    power_mode BOOLEAN, city VARCHAR(30));")
  puts 'Finished creating databases...'
end
