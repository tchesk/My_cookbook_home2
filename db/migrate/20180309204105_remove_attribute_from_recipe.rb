class RemoveAttributeFromRecipe < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :name, :string
  end
end
