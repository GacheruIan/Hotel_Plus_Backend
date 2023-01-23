class User < ActiveRecord::Base
    has_many :bookings
    has_many :rooms, through: :bookings


    def self.create_users(params)
        User.create(
            full_name: params[:full_name],
            user_name: params[:user_name],
            email: params[:email],
            phone_number: params[:phone_number],
            password: params[:password],
            confirm_password: params[:confirm_password],
            gender: params[:gender]
        )
    end
end