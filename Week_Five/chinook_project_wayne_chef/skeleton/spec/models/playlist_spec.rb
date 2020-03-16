# == Schema Information
#
# Table name: playlists
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#
require 'rails_helper'

RSpec.describe Playlist, type: :model do
  subject(:playlist) { Playlist.third }
  it "has playlist entries" do
    expect(playlist.playlist_entries.count).to eq(213)
  end

  it "has tracks through entries" do
    expect(playlist.tracks.third.name).to eq('Exodus, Pt. 1')
  end
end
