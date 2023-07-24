class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  put "/user/:id" do
    response = User.update_profile(params)
    {"message":response}.to_json
  end
  post "/" do
    response = User.authenticate_user(user_name: params[:user_name],password:params[:password])
    {"message":response}.to_json
  end
  get "/booking" do
    response = Booking.create_booking
    response.to_json
  end
  post "/booking" do
    response = Booking.create_booking(params)
    {"message":response}.to_json
  end
  post "/register" do
    response = User.register_user(params)
    {"message":response}.to_json
  end
  get "/reviews" do
    responses = Review.get_all_reviews
    responses.to_json 
  end
end
