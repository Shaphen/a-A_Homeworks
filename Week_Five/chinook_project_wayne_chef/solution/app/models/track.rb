# == Schema Information
#
# Table name: tracks
#
#  id            :integer          not null, primary key
#  bytes         :integer
#  composer      :string
#  milliseconds  :integer
#  name          :string
#  unit_price    :float
#  created_at    :datetime
#  updated_at    :datetime
#  album_id      :integer
#  genre_id      :integer
#  media_type_id :integer
#
class Track < ApplicationRecord

    belongs_to :genre,
        primary_key: :id,
        foreign_key: :genre_id,
        class_name: :Genre

    belongs_to :album,
        primary_key: :id,
        foreign_key: :album_id,
        class_name: :Album

    belongs_to :media_type,
        primary_key: :id,
        foreign_key: :media_type_id,
        class_name: :MediaType

    has_many :invoice_items,
        primary_key: :id,
        foreign_key: :track_id,
        class_name: :InvoiceLine

    has_many :playlist_track,
        primary_key: :id,
        foreign_key: :track_id,
        class_name: :PlaylistsTrack

    has_many :playlists,
        through: :playlist_track,
        source: :playlist
    
end
