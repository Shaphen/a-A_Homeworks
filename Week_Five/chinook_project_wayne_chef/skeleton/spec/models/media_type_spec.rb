# == Schema Information
#
# Table name: media_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#
require 'rails_helper'

RSpec.describe MediaType, type: :model do
  subject(:type1) { MediaType.first }
  it "has tracks" do
    expect(type1.tracks.count).to eq(3034)
  end
end
