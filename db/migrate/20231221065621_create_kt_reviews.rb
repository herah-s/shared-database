class CreateKtReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :kt_reviews do |t|
      t.references :kt_user, null: false, foreign_key: true
      t.references :kt_booking, null: false, foreign_key: true
      t.text :content
      t.integer :danger_level

      t.timestamps
    end
  end
end
