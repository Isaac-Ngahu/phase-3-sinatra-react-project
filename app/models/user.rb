class User < ActiveRecord::Base
    has_many :reviews
    has_many :bookings
    def self.authenticate_user(details)
        name = details[:user_name]
        user_details = User.find_by(user_name:name)
        if user_details.nil?
            return "user not found please register"
        else
             if user_details[:password] == details[:password] && user_details[:user_name] == details[:user_name]
                return user_details[:id]
             else
                return "Username or password is incorrect"
             end
        end
    end
    def self.register_user(details)
        user_details = User.find_by(user_name:details[:user_name])
        if user_details.nil?
            User.create(user_name:details[:user_name],phone_number:details[:phone_number],email:details[:email],password:details[:password])
            return "user created successfully"
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