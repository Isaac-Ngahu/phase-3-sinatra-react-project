class User < ActiveRecord::Base
    has_many :reviews
    has_many :bookings
    def self.authenticate_user(user_name:,password:)
        user_details = User.find_by(user_name:user_name)
        if user_details.nil?
            return "user not found please register"
        else
             if user_details[:password] == password && user_details[:user_name] == user_name
                return "#{user_details[:id]}"
             else
                return "Username or password is incorrect"
             end
        end
    end
end