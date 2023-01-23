class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :user_name
      t.string :email
      t.integer :phone_number
      t.string :password
      t.string :confirm_password
      t.string :gender
    end
  end
end