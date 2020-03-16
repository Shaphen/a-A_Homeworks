# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#
require 'rails_helper'

RSpec.describe Artist, type: :model do
subject(:artist) { Artist.first }
  it "has albums" do
    expect(artist.albums.second.title).to eq('Let There Be Rock')
  end
  it "has songs through albums" do
    expect(artist.songs.first.name).to eq('For Those About To Rock (We Salute You)')
  end
end
