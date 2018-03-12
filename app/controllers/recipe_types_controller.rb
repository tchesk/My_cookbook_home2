class RecipeTypesController < ApplicationController
  def new
    @recipe_types = RecipeType.new
  end
end
