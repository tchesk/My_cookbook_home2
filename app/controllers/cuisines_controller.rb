class CuisinesController < ApplicationController
  def show
  @cuisines = Cuisine.find(params[:id])

  end


end
