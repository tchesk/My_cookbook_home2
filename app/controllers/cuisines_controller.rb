class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find(params[:id])
    @recipes = Recipe.new
    
  end
  def new
    @cuisine = Cuisine.new
  end
  def create
    cuisine_params = params.require(:cuisine).permit(:name)
    @cuisine = Cuisine.new(cuisine_params)

    if @cuisine.save
      redirect_to cuisine_path(@cuisine.id)
    else
      flash[:error] = @cuisine.errors.full_messages
      render :new
    end
  end
end
