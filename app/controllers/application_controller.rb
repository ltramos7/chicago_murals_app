class ApplicationController < Sinatra::Base
  
  #Don't forget to update config.ru to see application_controller.rb

  # configure do
  #   set :views, 'app/views'
  # end

  get '/' do
    "Welcome to Chicago Murals"
  end
end