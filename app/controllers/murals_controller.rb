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

  get "/murals/:id/edit" do
    @mural = Mural.find(params[:id])
    erb :"murals/edit"
  end

  patch "/murals/:id" do
    @mural = Mural.find(params[:id])
    @mural.update(title: params[:title], artist: params[:artist], location: params[:location])
    redirect "/murals/#{@mural.id}"
  end

  delete "/murals/:id" do
    @mural = Mural.find(params[:id])
    @mural.delete
    redirect "/murals"
  end

end