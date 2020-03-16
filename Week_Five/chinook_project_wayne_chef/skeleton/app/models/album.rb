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
    
end
