class CreateKtBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :kt_bookings do |t|
      t.references :kt_user, null: false, foreign_key: true
      t.references :kt_experience, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :status
      t.float :total_price

      t.timestamps
    end
  end
end
