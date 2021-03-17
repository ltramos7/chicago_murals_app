require 'sinatra'

# This is the root route that will be available at http://localhost:4567/ (default sinatra port)
get '/' do
  'Hello world!'
end
