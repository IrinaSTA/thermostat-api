require 'thermostat_state'

describe ThermostatState do

  let (:thermostat) { ThermostatState.save(23, false, "Tokyo") }

  it 'saves temperature' do
    expect(thermostat.temperature).to eq(23)
  end
  it 'saves power saving status' do
    expect(thermostat.power_mode).to eq(false)
  end
  it 'saves city' do
    expect(thermostat.city).to eq("Tokyo")
  end
end
