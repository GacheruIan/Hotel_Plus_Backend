class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/bookings" do
    booking = Booking.all
    booking.to_json
  end

  get "/hotels" do
    hotel = Hotel.all
    hotel.to_json
  end
  

  get "/rooms" do
    room = Room.all
    room.to_json
  end
  
  get "/users" do 
    user = User.all
    user.to_json
  end

  post '/rooms' do
    room = Room.create_rooms(params)
    room.to_json
  end

  post '/bookings' do
    booking = Booking.create_bookings(params)
    booking.to_json
  end

  post '/hotels' do
    hotels = Hotel.create_hotels(params)
    hotels.to_json
  end

  post '/users' do
    users = User.create_users(params)
    users.to_json
  end

  delete '/bookings/:id' do
    booking = Booking.delete_bookings(params[:id])
    booking.to_json
  end

  # update '/bookings/:id' do
  #   booking = Booking.update_bookings(params)
  #   booking.to_json
  # end

  patch '/bookings/:id' do
    booking = Booking.patch_bookings(params)
    booking.to_json
  end

  

end

