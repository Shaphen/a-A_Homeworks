# == Schema Information
#
# Table name: playlists_tracks
#
#  created_at  :datetime
#  updated_at  :datetime
#  playlist_id :integer
#  track_id    :integer
#
require 'rails_helper'

RSpec.describe PlaylistsTrack, type: :model do
  subject(:playlist_track) { PlaylistsTrack.find_by(playlist_id: 3) }
  it "has tracks" do
    expect(playlist_track.track.name).to eq('Battlestar Galactica: The Story So Far') 
  end

  it "has playlists" do
    expect(playlist_track.playlist.name).to eq('TV Shows')
  end
end
