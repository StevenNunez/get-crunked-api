class Drink < ActiveRecord::Base
  has_many :proportions
  has_many :ingredients, through: :proportions
end
