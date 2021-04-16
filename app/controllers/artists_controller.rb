class ArtistsController < ApplicationController
  get "/artists" do
    @artists = Artist.all
    erb :"artists/index"
  end

  get "/artists/new" do
    erb :"artists/new"
  end

  get "/artists/:id" do
    @artist = Artist.find(params[:id])
    erb :"artists/show"
  end

  post "/artists" do
    @artist = Artist.create(params)
    redirect "/artists/#{@artist.id}"
  end
  
  get "/artists/:id/edit" do
    @artist = Artist.find(params[:id])
    erb :"artists/edit"
  end
  
  patch "/artists/:id" do
    @artist = Artist.find(params[:id])
    @artist.update(first_name: params[:first_name], last_name: params[:last_name], alias: params[:alias])
    redirect "/artists/#{@artist.id}"

  end

end