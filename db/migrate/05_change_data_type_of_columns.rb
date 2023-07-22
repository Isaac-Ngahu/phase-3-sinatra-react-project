class ChangeDataTypeOfColumns < ActiveRecord::Migration[6.1]
    def change
        change_column :users,:phone_number,:string
        change_column :bookings,:user_id,:string
        change_column :reviews,:user_id,:string
    end
end