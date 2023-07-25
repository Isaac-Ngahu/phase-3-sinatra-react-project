class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  put "/user/:id" do
    response = User.update_profile(params)
    {"message":response}.to_json
  end
  post "/" do
    response = User.authenticate_user(params)
    if response.is_a?(String) && response.start_with?("user not found")
      status 404
      return { "error": response }.to_json
    elsif response.is_a?(String) && response.start_with?("Username or password is incorrect")
      status 401
      return { "error": response }.to_json
    else
      status 200
      return { "user_id": response }.to_json
    end
  end
  post "/booking" do
    response = Booking.create_booking(params)
    if response.is_a?(String) && response.start_with?("please enter a later date")
      status 422
      return { "error" => response }.to_json
    else
      return { "booking_id" => response }.to_json
    end
  end
  post "/register" do
    response = User.register_user(params)
    if response.is_a?(String) && response.start_with?("user name already exists")
      return {"message":response}.to_json
    else
      return {"user_id":response}.to_json
    end
  end
  get "/reviews" do
    responses = Review.get_all_reviews
    responses.to_json 
  end
  post "/reviews" do
    response = Review.create_review(params)
    response.to_json
  end
end
