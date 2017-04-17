class Artist < ApplicationRecord
  has_many :songs

  # def songs
  #   SELECT songs.* FROM songs WHERE songs.artist_id = ?
  # end
end
