require 'date'


class Booking < ActiveRecord::Base
    belongs_to :user
    def self.create_booking(details)
        last_booking = Booking.all.last
        response = compare_dates(details[:booking_date],last_booking[:booking_date])
        if response == "valid"
            Booking.create(user_id:details[:user_id],vehicle_make:details[:vehicle_make],
            booking_date:details[:booking_date],
            booking_time:details[:booking_time],
            service_type:details[:service_type],
            additional_notes:details[:additional_notes])
            return "booking successfully created"
        else
            return "please enter a later date"
        end
        
    end
    def self.get_latest_booking
        time_and_date = []
        Booking.all.each do |booking|
            each_date_and_time = [booking.booking_date,booking.booking_time]
            time_and_date << each_date_and_time
        end
        time_and_date
    end
    def self.compare_dates(user_date,latest_date)
        user_datetime1 = Date.parse(user_date)
        latest_datetime1 = Date.parse(latest_date)
        if user_date > latest_date
            return "valid"
        else
            return "invalid"
        end
    end
end