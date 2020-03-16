# == Schema Information
#
# Table name: media_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#
class MediaType < ApplicationRecord

    has_many :tracks,
        primary_key: :id,
        foreign_key: :media_type_id,
        class_name: :Track
    
end
