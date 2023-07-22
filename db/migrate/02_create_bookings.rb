class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.string :vehicle_make
      t.date :booking_date
      t.time :booking_time
      t.string :service_type
      t.string :additional_notes
      t.timestamps
    end
  end
end
