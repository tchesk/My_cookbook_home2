class Recipe < ApplicationRecord
  belongs_to :cuisine
  has_many :recipe_type
  validates :title, :recipe_type, :difficulty,
     :cook_time, :ingredients,
     :method, presence: {message:
    'Você deve informar todos os dados da receita'}
end
