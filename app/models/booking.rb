require 'date'


class Booking < ActiveRecord::Base
    belongs_to :user
    def self.create_booking(details)
        last_booking = Booking.all.last
        response = compare_dates(details[:booking_date],details[:booking_time],last_booking[:booking_date],last_booking[:booking_time])
        if response == "valid"
            new_booking = Booking.create(user_id:details[:user_id],vehicle_make:details[:vehicle_make],
            booking_date:details[:booking_date],
            booking_time:details[:booking_time],
            service_type:details[:service_type],
            additional_notes:details[:additional_notes])
            return new_booking[:id]
        else
            return "Please enter a later date"
        end
        
    end
    
    def self.compare_dates(user_date,user_time,latest_date,latest_time)
        user_date = "#{user_date} #{user_time}"
        latest_date = "#{latest_date} #{latest_time}"
        user_datetime1 = DateTime.parse(user_date)
        latest_datetime1 = DateTime.parse(latest_date)
        if user_date > latest_date
            return "valid"
        else
            return "invalid"
        end
    end
    def self.get_bookings 
        Booking.all
    end
end