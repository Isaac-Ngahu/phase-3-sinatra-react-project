class User < ActiveRecord::Base
    has_many :reviews
    has_many :bookings
    def self.authenticate_user(details)
        name = details[:user_name].strip
        password = details[:password].strip
        user_details = User.find_by(user_name:name)
        if user_details.nil?
            return "user not found please register"
        elsif user_details[:password] == password && user_details[:user_name] == name
            return user_details[:id]
        else
            return "Username or password is incorrect"
        end
    end
    def self.register_user(details)
        user_details = User.find_by(user_name:details[:user_name])
        if user_details.nil?
            user = User.create(user_name:details[:user_name],phone_number:details[:phone_number],email:details[:email],password:details[:password])
            return user[:id]
        else
            return "user name already exists"
        end
    end
    def self.update_profile(details)
        user = User.find(details[:id])
        user.update(details[:update] => details[:value])
        return "details updated successfully"
    end
end