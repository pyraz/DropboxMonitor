require 'artifice'
require_relative '../app/monitor_service'

RSpec.configure do |config|
  config.before(:each) do
    Artifice.activate_with(MonitorService)
  end
end