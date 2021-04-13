class AesthetesController < ApplicationController
  get '/aesthetes' do
    @aesthetes = Aesthete.all
    erb :'aesthetes/index'
  end

  get '/aesthetes/:id' do
    @aesthete = Aesthete.find(params[:id])
    erb :'aesthetes/show'
  end

end

