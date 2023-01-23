class Hotel < ActiveRecord::Base
    has_many :rooms
    has_many :bookings
    has_many :users, through: :bookings

    def self.create_hotels(params)
        Hotel.create(
            image_url: params[:image_url],
            name: params[:name],
            location: params[:location],
            description: params[:description]
        )
    end
end