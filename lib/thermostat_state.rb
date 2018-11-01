class ThermostatState

  attr_reader :temperature, :power_mode, :city

  def initialize(temperature, power_mode, city)
    @temperature = temperature
    @power_mode = power_mode
    @city = city
  end

  def self.save(temperature, power_mode, city)
    ThermostatState.new(temperature, power_mode, city)
  end

end
