class RecipeTypesController < ApplicationController
  def show
    @recipe_type = RecipeType.find(params[:id])
    @recipe = Recipe.new

    if @recipe.save
      redirect_to recipe_path(recipe.id)
    else
      flash[:errors] = 'Nenhuma receita encontrada para este tipo de receitas'
    end
  end
end
