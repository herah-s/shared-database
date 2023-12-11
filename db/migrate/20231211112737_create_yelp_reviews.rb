class CreateYelpReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :yelp_reviews do |t|
      t.references :yelp_restaurant, null: false, foreign_key: true
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
