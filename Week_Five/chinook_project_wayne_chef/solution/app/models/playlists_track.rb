# == Schema Information
#
# Table name: playlists_tracks
#
#  created_at  :datetime
#  updated_at  :datetime
#  playlist_id :integer
#  track_id    :integer
#
class PlaylistsTrack < ApplicationRecord

    belongs_to :track,
        primary_key: :id,
        foreign_key: :track_id,
        class_name: :Track

    belongs_to :playlist,
        primary_key: :id,
        foreign_key: :playlist_id,
        class_name: :Playlist
    
end
