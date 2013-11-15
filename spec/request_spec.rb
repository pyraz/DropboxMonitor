require 'spec_helper'
require 'dropbox_monitor'

describe "dropbox monitor" do
  it "calls hi" do
    response = DropboxMonitor::Client.hi

    puts response.inspect

    expect(response.status).to eq(200)
  end
end