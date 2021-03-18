class ProjectOneApp < Sinatra::Base
  get '/' do
    erb :"blogs/new"
  end

  post '/' do
    blog = Blog.new(params["blog"])
    if blog.save
      redirect "/blogs/#{blog.id}"
    else
      erb :"blogs/new"
    end
  end
end