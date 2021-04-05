class User < Sinatra::Base
  get '/' do 
    erb :"users/new"
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :"user/show"
  end

  get '/users' do
    @users = User.all
    erb :users/show
  end

  post '/users' do
    @user =  User.new(params["user"])
    if @user.save
      redirect "/users/#{@user.id}"
    else
      erb :"users/new"
    end
  end

end

