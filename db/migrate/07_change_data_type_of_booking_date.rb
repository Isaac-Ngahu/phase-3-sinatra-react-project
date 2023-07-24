class ChangeDataTypeOfBookingDate < ActiveRecord::Migration[6.1]
    def change
        change_column :bookings, :booking_date , :string
    end
end