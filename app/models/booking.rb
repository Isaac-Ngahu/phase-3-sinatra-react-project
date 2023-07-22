class Booking < ActiveRecord::Base
    belongs_to :user
    def self.create_booking(details)
        Booking.create(user_id:details[:user_id],vehicle_make:details[:vehicle_make],
        booking_date:details[:booking_date],
        booking_time:details[:booking_time],
        service_type:details[:service_type],
        additional_notes:details[:additional_notes])
        return "booking successfully created"
    end
end