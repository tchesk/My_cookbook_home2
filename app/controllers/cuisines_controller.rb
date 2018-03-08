class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find(params[:id])
    @recipes = Recipe.new()
  end
  def new

    @cuisine = Cuisine.new

    if @cuisine.save
    else
      @cuisine.errors.full_messages
    end


  end
  def create
    cuisine_params = params.require(:cuisine).permit(:name)
    @cuisines = Cuisine.new(cuisine_params)

    @cuisines.save
    redirect_to cuisine_path(@cuisines.id)

  end
end
