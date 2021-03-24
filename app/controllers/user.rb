class User < Sinatra::Base
  get '/users'do 
    erb :"users/new"
  end
end