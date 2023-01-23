# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Booking.destroy_all
Hotel.destroy_all
Room.destroy_all
User.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating users..."
user1 = User.create(full_name: "Elon",user_name:"Musk",email:"12@mail.com",phone_number:"0722222222",password:"12@#.com",confirm_password:"12@mail.com",gender:"male")
user2 = User.create(full_name: "Neon",user_name:"Ray",email:"34@mail.com",phone_number:"07222222344",password:"34@#.com",confirm_password:"34@mail.com",gender:"female")


puts "Creating rooms.."
room1 = Room.create(room_type: "suite", room_no: 1, hotel_id:1)
room2 = Room.create(room_type: "villa", room_no: 2, hotel_id:1)
room3 = Room.create(room_type: "executive", room_no:3, hotel_id:1)
room4 = Room.create(room_type: "suite", room_no:4, hotel_id:1)
room5 = Room.create(room_type: "villa", room_no:5, hotel_id:1)
room6 = Room.create(room_type: "suite", room_no:6, hotel_id:1)
room7 = Room.create(room_type: "villa", room_no:7, hotel_id:1)
room8 = Room.create(room_type: "executive", room_no:8, hotel_id:1)
room9 = Room.create(room_type: "presidential", room_no:9, hotel_id:1)
room10 = Room.create(room_type: "suite", room_no:10, hotel_id:2)

puts "Creating hotel..."
hotel1 = Hotel.create(image_url:"",name: "Hotel+", location: "Westlands", description:"5star-allsuites")
hotel2 = Hotel.create(image_url:"",name: "Sarova", location: "Parklands", description:"4star-halfsuites")
hotel3 = Hotel.create(image_url:"",name: "Weston", location: "Langata", description:"3star-suite")
hotel4 = Hotel.create(image_url:"",name: "Verona", location: "Ruiru", description:"1star-suite")

puts "booking hotel..."
booking1 = Booking.create(user_name: "Elon", email: "12@mail.com",room_id:1,hotel_id:1,user_id:1)
booking2 = Booking.create(user_name: "Neon", email: "34@mail.com",room_id:2,hotel_id:2,user_id:2)
booking3 = Booking.create(user_name: "Blon", email: "56@mail.com",room_id:3,hotel_id:3,user_id:1)
booking4 = Booking.create(user_name: "Leon", email: "78@mail.com",room_id:4,hotel_id:4,user_id:2)

puts "✅ Done seeding!"
