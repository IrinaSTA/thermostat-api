require 'thermostat_state'

describe ThermostatState do

  let (:thermostat) { ThermostatState.save("23", false, "Tokyo") }



  it 'saves temperature' do
    expect(thermostat.temperature).to eq("23")
  end
  it 'saves power saving status' do
    expect(thermostat.power_mode).to eq("f")
  end
  it 'saves city' do
    expect(thermostat.city).to eq("Tokyo")
  end
end


describe '#read' do


    let (:state) { ThermostatState.read }

  it 'reads the temperature' do
    expect(state.temperature).to eq("23")
  end
  it 'reads the power saving status' do
    expect(state.power_mode).to eq("f")
  end
  it 'reads the city' do
    expect(state.city).to eq("Tokyo")
  end
end
