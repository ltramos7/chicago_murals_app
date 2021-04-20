class MuralsController < ApplicationController
  get "/murals" do
    @murals = Mural.all 
    erb :"murals/index"
  end

  get "/murals/new" do
    erb :"murals/new"
  end

  get "/murals/:id" do
    @mural = Mural.find(params[:id])
    erb :"murals/show"
  end

  post "/murals" do
    @mural = Mural.create(params)
    redirect "/murals"
  end
end