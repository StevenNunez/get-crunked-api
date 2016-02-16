class CreateProportions < ActiveRecord::Migration
  def change
    create_table :proportions do |t|
      t.references :drink, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true
      t.string :amount

      t.timestamps null: false
    end
  end
end
