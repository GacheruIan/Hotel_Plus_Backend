class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.integer :room_no
      t.integer :hotel_id
    end
  end
end
