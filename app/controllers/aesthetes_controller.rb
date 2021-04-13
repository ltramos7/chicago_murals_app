class AesthetesController < ApplicationController
  get "/aesthetes" do
    @aesthetes = Aesthete.all
    erb :"aesthetes/index"
  end

  get "/aesthetes/new"do
    erb :"aesthetes/new"
  end

  get "/aesthetes/:id" do
    @aesthete = Aesthete.find(params[:id])
    erb :"aesthetes/show"
  end

  post "/aesthetes" do
    @aesthete = Aesthete.create(params)
    erb :"aesthetes/show" #does not redirect to the aesthetes specific url such as  "/aesthetes/:id"
    # redirect "/aesthetes/#{@aesthete.id}"   the redirect will cause a refresh, so I may lose error messages
  end

  get "/aesthetes/:id/edit" do
    @aesthete = Aesthete.find(params[:id])
    erb :"aesthetes/edit"
  end
  
  patch "/aesthetes/:id" do
    @aesthete = Aesthete.find(params[:id])
    @aesthete.update(first_name: params[:first_name], last_name: params[:last_name])
    erb :"aesthetes/show"
  end
end

