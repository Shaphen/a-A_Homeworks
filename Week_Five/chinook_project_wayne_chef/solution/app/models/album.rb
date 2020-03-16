# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime
#  updated_at :datetime
#  artist_id  :integer
#
class Album < ApplicationRecord

    has_many :tracks,
        primary_key: :id,
        foreign_key: :album_id,
        class_name: :Track

    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artist

    
end
