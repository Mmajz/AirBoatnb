class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :booking_status
      t.string :comment
      t.date :start_date
      t.date :end_date
      t.references :boat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
