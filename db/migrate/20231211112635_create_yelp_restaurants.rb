class CreateYelpRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :yelp_restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :category

      t.timestamps
    end
  end
end
