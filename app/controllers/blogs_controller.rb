class BlogsController < Sinatra::Base

  get '/blogs' do
    erb :index
  end
  # get '/' do
  #   erb :"blog/new"
  # end

  # get '/blogs/:id' do
  #   @blog = Blog.find(params[:id])
  #   erb :"blog/show"
  # end

  # get '/blogs/:id/edit' do 
  #   @blog = Blog.find(params[:id])
  #   erb :"blog/edit"
  # end

  # get '/blogs' do
  #   @blogs = Blog.all
  #   erb :"blogs/show"
  # end

  # patch '/blogs/:id' do 
  #   @blog = Blog.find(params[:id])
  #   @blog.title = params[:title]
  #   @blog.content = params[:content]
  #   @blog.save
  #   redirect to "/blogs/#{@blog.id}"
  # end

  # post '/' do
  #   @blog = Blog.new(params["blog"])
  #   if @blog.save
  #     redirect "/blogs/#{@blog.id}"
  #   else
  #     erb :"blog/new"
  #   end
  # end
end