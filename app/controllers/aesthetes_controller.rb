class AesthetesController < ApplicationController
  get '/aesthetes' do
    @aesthetes = Aesthete.all
    erb :'aesthetes/index'
  end
end

