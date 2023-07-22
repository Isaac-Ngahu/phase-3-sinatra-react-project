class ChangeDataTypeOfBookingTime < ActiveRecord::Migration[6.1]
    def change
        change_column :bookings, :booking_time, :string
    end
end