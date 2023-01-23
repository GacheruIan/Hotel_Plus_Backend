  class CreateHotels < ActiveRecord::Migration[6.1]
    def change
      create_table :hotels do |t|
        t.string :image_url
        t.string :name
        t.string :location
        t.string :description
        
      end
    end
  end