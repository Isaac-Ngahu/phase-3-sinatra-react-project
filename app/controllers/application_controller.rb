class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    User.all.to_json
  end
  post "/" do
    response = User.authenticate_user(user_name: params[:user_name],password:params[:password])
    {"message":response}.to_json
  end
  post "/booking" do
    response = Booking.create_booking(params)
    {"message":response}.to_json
  end
end
