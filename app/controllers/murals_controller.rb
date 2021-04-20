class MuralsController < ApplicationController
  get "/murals" do
    @murals = Mural.all 
    erb :"murals/index"
  end
end