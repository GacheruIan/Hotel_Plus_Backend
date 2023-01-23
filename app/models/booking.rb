class Booking < ActiveRecord::Base
    belongs_to :user
    belongs_to :hotel 
    has_many :rooms, through: :hotel
    


    def self.create_bookings(params)
        Booking.create(
            user_name: params[:user_name],
            email: params[:email],
            description: params[:description],
            hotel_id: params[:hotel_id],
            user_id: params[:user_id],
            room_id: params[:room_id]
        )
    end


    def self.delete_bookings(params)
        booking = Booking.find(params)
        booking.destroy
     end
 

    #  def self.update_bookings(params)
    #     booking = Booking.find(params[:id])
    #     booking.update(email: params[:email],description: params[:description])
    # end

    def self.patch_bookings(params)
        booking = Booking.find(params[:id])
        booking.update(email: params[:email])
        booking.to_json
    end

end