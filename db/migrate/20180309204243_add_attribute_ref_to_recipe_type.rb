class AddAttributeRefToRecipeType < ActiveRecord::Migration[5.1]
  def change
    add_reference :recipe_types, :name, foreign_key: true
  end
end
