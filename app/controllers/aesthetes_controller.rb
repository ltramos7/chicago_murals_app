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
    redirect "/aesthetes/#{@aesthete.id}"
  end

end

