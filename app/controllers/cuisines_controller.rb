class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find(params[:id])
    @recipes = Recipe.new()
  end
  def new
    @cuisine = Cuisine.new()
  end
  def create
    cuisine_params = params.require(:cuisine).permit(:name)
    @cuisines = Cuisine.new(cuisine_params)

    if @cuisines.save

    redirect_to cuisine_path(@cuisines.id)


  end
end
