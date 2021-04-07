class App < Sinatra::Base
  get '/users/new' do 
    erb :"users/new"
  end

  get '/users/:id' do
    @user = Users.find(params[:id])
    erb :"user/show"
  end

  get '/users' do
    @users = Users.all
    erb :"users/show"
  end

  post '/users/new' do
    @user =  Users.new(params["user"])
    puts "------"
    if @user.save
      redirect "/users/#{@user.id}"
    else
      erb :"users/new"
    end
  end
end

