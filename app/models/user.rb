class User < ActiveRecord::Base
    has_many :reviews
    has_may :bookings
end