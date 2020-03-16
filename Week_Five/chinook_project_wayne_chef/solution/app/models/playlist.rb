# == Schema Information
#
# Table name: playlists
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#
class Playlist < ApplicationRecord

    has_many :playlist_entries,
        primary_key: :id,
        foreign_key: :playlist_id,
        class_name: :PlaylistsTrack

    has_many :tracks,
        through: :playlist_entries,
        source: :track
    
end
