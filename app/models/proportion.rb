class Proportion < ActiveRecord::Base
  belongs_to :drink
  belongs_to :ingredient

  def self.create_from_ember(proportion_parameters)
    ingredient = Ingredient.where(
                  name: proportion_parameters[:ingredient])
                  .first_or_create
                  
    proportion = Proportion.new(
                    drink_id: proportion_parameters[:drink_id],
                    amount: proportion_parameters[:amount],
                    ingredient: ingredient)

    proportion.save
    proportion
  end
end
