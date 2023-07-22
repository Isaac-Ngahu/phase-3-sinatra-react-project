class AddTimestampsColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_timestamps :users, default: -> { 'CURRENT_TIMESTAMP' }, null: false
  end
end
