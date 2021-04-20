class MuralsController < ApplicationController
  get "/murals" do
    @murals = Mural.all 
    erb :"murals/index"
  end

  get "/murals/:id" do
    @mural = Mural.find(params[:id])
    erb :"murals/show"
  end
end