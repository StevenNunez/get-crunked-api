class DrinkSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :description, :instructions, :source
  has_many :proportions
end
