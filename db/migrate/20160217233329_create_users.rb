class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, index: true
      t.string :password_digest
      t.string :authentication_token, index: true

      t.timestamps null: false
    end
  end
end
