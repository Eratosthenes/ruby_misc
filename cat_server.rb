require 'socket'
require 'thread'

server = TCPServer.new(3000)

def handle_request(socket)
  Thread.new do
    socket.puts "Thanks for connecting!"
    socket.puts "what is your name?"
    name = socket.gets.chomp 
    socket.puts "#{name} is a stupid name"
    socket.puts "Closing connection"
    socket.close
  end
  puts "spawned worker thread"
end

while true
  socket = server.accept
  handle_request(socket)
end
