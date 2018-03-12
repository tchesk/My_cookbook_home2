class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipes = Recipe.new
    @cuisine = Cuisine.all
    @recipe_type = RecipeType.all
    @recipe = Recipe.new
  end

  def create
    recipe_params = params.require(:recipe).permit(:title, :recipe_type_id, :cuisine_id,
      :difficulty, :cook_time, :ingredients, :method)

    @recipes = Recipe.new(recipe_params)

    @recipes.save

    redirect_to recipe_path(@recipes.id)

  end


end
