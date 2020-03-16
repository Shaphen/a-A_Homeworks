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
require 'rails_helper'

RSpec.describe Track, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject(:track) { Track.first }
  let(:track2) { Track.find_by(name: "Bad Boy Boogie") }

  it "has a genre" do
    expect(track.genre.name).to eq("Rock")
  end

  it "has an album" do
    expect(track.album.title).to eq('For Those About To Rock We Salute You')
  end

  it "has a mediatype" do
    expect(track2.media_type.name).to eq('MPEG audio file')
  end

  it "has playlist track entries" do
    expect(track.playlist_track.first.playlist_id).to eq(1)
  end

  it "has playlists through playlist entries" do
    expect(track2.playlists.first.name).to eq('Music')
  end

  it "has invoice items" do
    expect(track2.invoice_items.count).to eq(0)
  end
end
