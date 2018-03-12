class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @cuisine = Cuisine.all
    @recipe_type = RecipeType.all
    @recipe = Recipe.new
  end

  def create
    recipe_params = params.require(:recipe).permit(:title, :recipe_type_id, :cuisine_id,
      :difficulty, :cook_time, :ingredients, :method)
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipe_path(@recipe.id)
    else
      flash[:error] = @recipe.errors.full_messages
      @cuisine = Cuisine.all
      @recipe_type = RecipeType.all
      render :new
    end
  end
end
