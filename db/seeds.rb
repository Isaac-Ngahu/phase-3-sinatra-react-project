puts "🌱 Seeding spices..."
User.destroy_all
Review.destroy_all
Booking.destroy_all
puts "destroyed previous data"
# Seed your database here
Ngahu = User.create(user_name:"Ngahu",phone_number:"0786996776",email:"Ngahu01@gmail.com",password:"1234")
Mau = User.create(user_name:"Mau",phone_number:"0794847565",email:"Mau01@gmail.com",password:"5678")
Shiks = User.create(user_name:"Shiks",phone_number:"0793836463",email:"Shiks02@gmail.com",password:"7890")

booking1 = Booking.create(user_id:Ngahu[:id],vehicle_make:"BMW",booking_date:"07/27/2023",booking_time:"10:00",service_type:"check up",additional_notes:"no additional notes")
booking2 = Booking.create(user_id:Mau[:id],vehicle_make:"Discovery land rover",booking_date:"08/01/2023",booking_time:"12:00",service_type:"oil change",additional_notes:"check for leakages")
booking3 = Booking.create(user_id:Shiks[:id],vehicle_make:"subaru legacy",booking_date:"09/01/2023",booking_time:"5:00",service_type:"paint redo",additional_notes:"inakunywa sana")
booking4 = Booking.create(user_id:Ngahu[:id],vehicle_make:"Jeep wrangler",booking_date:"06/25/2023",booking_time:"11:00",service_type:"wheel balancing",additional_notes:"dont scratch the paint")
booking5 = Booking.create(user_id:Mau[:id],vehicle_make:"vitz",booking_date:"07/30/2023",booking_time:"15:00",service_type:"break retightening",additional_notes:"hand break not working well")
booking6 = Booking.create(user_id:Shiks[:id],vehicle_make:"range rover sport",booking_date:"10/02/2023",booking_time:"14:00",service_type:"shock replacement",additional_notes:"check he wipers")

review1 = Review.create(user_id:Ngahu[:id],review:"excellent time keeping",booking_id:booking1[:id])
review1 = Review.create(user_id:Mau[:id],review:"check on your time keeping",booking_id:booking2[:id])
review1 = Review.create(user_id:Shiks[:id],review:"wasnt satisfied",booking_id:booking3[:id])
review1 = Review.create(user_id:Ngahu[:id],review:"you now have a new customer",booking_id:booking4[:id])
review1 = Review.create(user_id:Mau[:id],review:"surprisingly good work",booking_id:booking5[:id])
review1 = Review.create(user_id:Shiks[:id],review:"awesome stuff",booking_id:booking6[:id])


puts "✅ Done seeding!"
