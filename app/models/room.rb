class Room < ActiveRecord::Base
    belongs_to :hotel
    belongs_to :user


    def self.create_rooms(params)
        Room.create(
            room_type: params[:room_type],
            room_no: params[:room_no],
            hotel_id: params[:hotel_id]
        )
    end
end
