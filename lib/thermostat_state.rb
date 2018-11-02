require_relative './database_connection'
require 'pry'

class ThermostatState

  attr_reader :temperature, :power_mode, :city

  def initialize(temperature:, power_mode:, city:)
    @temperature = temperature
    @power_mode = power_mode
    @city = city
  end
# updates record with hardcoded id of 1
  def self.save(temperature, power_mode, city)
    state = DatabaseConnection.query("UPDATE state \
      SET temperature = '#{temperature}', \
          power_mode = '#{power_mode}', \
          city = '#{city}' \
      WHERE id = '1' \
      RETURNING temperature, power_mode, city;")
    ThermostatState.new(
      temperature: state[0]['temperature'],
      power_mode: state[0]['power_mode'],
      city: state[0]['city'])
  end

  def self.read
    state = DatabaseConnection.query('SELECT * FROM state')
    ThermostatState.new(
      temperature: state[0]['temperature'],
      power_mode: state[0]['power_mode'],
      city: state[0]['city']
    )
  end
end
