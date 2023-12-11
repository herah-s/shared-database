class CreateWatchlistBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :watchlist_bookmarks do |t|
      t.string :comment
      t.references :watchlist_movie, null: false, foreign_key: true
      t.references :watchlist_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
