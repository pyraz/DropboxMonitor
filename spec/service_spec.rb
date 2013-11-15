require 'rack/test'
require_relative '../app/monitor_service'

describe 'Our Service' do
  include Rack::Test::Methods

  def app
    MonitorService.new
  end

  it 'should work' do
    get '/hi'

    expect(last_response.status).to eq(200)
    expect(last_response.body).to eq('cfbg79xwatdq2a6')
  end
end