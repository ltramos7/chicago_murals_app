class ProjectOneApp < Sinatra::Base
  get '/' do
    erb :"blogs/new"
  end

end