class ProportionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :ingredient

  def ingredient
    object.ingredient.name
  end
end
