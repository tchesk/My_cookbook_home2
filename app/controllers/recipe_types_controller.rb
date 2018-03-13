class RecipeTypesController < ApplicationController
  def show
    @recipe_type = RecipeType.find(params[:id])
    @recipe = Recipe.all

    if @recipe.save
    else
      flash[:errors] = 'Nenhuma receita encontrada para este tipo de receitas'
    end
  end
end
