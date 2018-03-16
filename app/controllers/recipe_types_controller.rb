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
  def new
    @recipe_type = RecipeType.new
  end
  def create
    recipe_type = params.require(:recipe_type).permit(:name)
    @recipe_type = RecipeType.new(recipe_type)

    if @recipe_type.save
      redirect_to recipe_type_path(@recipe_type.id)
    else
      flash[:errors] = @recipe_type.errors.full_messages
      render :new
    end
  end
end
