require 'sinatra/base'
require 'dotenv'
require 'dropbox_sdk'

class MonitorService < Sinatra::Base

  get '/hi' do
    @thing = "hello"
    Dotenv.load

    ENV['DROPBOX_API_SECRET']
  end

  get '/authenticate' do
    Dotenv.load

    secret = ENV['DROPBOX_API_SECRET']
    key = ENV['DROPBOX_API_KEY']

    redirect "https://www.dropbox.com/1/oauth2/authorize?response_type=code&client_id=#{key}&redirect_uri=http://localhost:9292/authenticate_callback"
  end

  get '/authenticate_callback' do
    "#{params}"
  end

  get "/all_files_from_dropbox" do
    Dotenv.load

    secret = ENV['DROPBOX_API_SECRET']
    key = ENV['DROPBOX_API_KEY']


  end

  get '/get_info' do
    access_token = ENV['ACCESS_CODE']

    client = DropboxClient.new(access_token)
    "linked account: #{client.account_info.inspect}"
  end

  get '/thing' do
    @thing
  end
end