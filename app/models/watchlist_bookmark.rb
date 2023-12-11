class WatchlistBookmark < ApplicationRecord
  belongs_to :WatchlistMovie
  belongs_to :WatchlistList
end
