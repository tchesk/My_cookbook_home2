class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipes = Recipe.new()
  end

  def create

    recipe_params = params.require(:recipe).permit(:title, :recipe_type, :cuisine,
      :difficulty, :cook_time, :ingredients, :method)


    @recipes = Recipe.new(recipe_params)

    @recipes.save

    redirect_to recipe_path(@recipes.id)
  end


end
