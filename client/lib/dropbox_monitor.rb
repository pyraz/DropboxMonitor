module DropboxMonitor
  class Client
    def self.hi
      Net::HTTP.get('example.com', '/hi')
    end
  end
end