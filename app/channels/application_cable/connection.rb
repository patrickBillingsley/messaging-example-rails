module ApplicationCable
  class Connection < ActionCable::Connection::Base
    def connect
      puts "Action Cable Connecting..."
    end

    def disconnect
      puts "Action Cable Disconnecting..."
    end
  end
end
