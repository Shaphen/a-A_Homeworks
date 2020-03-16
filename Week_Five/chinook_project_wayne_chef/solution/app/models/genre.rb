# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#
class Genre < ApplicationRecord

    has_many :tracks,
        primary_key: :id,
        foreign_key: :genre_id,
        class_name: :Track
    
end
