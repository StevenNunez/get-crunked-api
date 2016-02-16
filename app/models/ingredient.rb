class Ingredient < ActiveRecord::Base
  has_many :proportions
  has_many :drinks, through: :proportions
end
