class CreateWatchlistBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :watchlist_bookmarks do |t|
      t.string :comment
      t.references :WatchlistMovie, null: false, foreign_key: true
      t.references :WatchlistList, null: false, foreign_key: true

      t.timestamps
    end
  end
end
