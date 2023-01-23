class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|

      t.string :user_name
      t.string :email
      t.string :description
      t.integer :hotel_id
      t.integer :user_id
      t.integer :room_id
      t.datetime :created_at
      t.datetime :updated_at

    end
  end
end
