class Cuisine < ApplicationRecord
  has_many :recipes
  validates :name, :uniqueness => {:message => 'Você deve informar o nome da cozinha'}
end
