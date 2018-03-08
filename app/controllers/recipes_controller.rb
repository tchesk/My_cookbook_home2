class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @cuisine = Cuisine.all
  end

  def create

    recipe_params = params.require(:recipe).permit(:title, :recipe_type, :cuisine_id,
      :difficulty, :cook_time, :ingredients, :method)

    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipe_path(@recipe.id)
    else
      @cuisine = Cuisine.all
      flash[:error] = @recipe.errors.full_messages
      render :new
    end
  end


end
