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
    
end
