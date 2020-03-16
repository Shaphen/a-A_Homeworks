# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#
require 'rails_helper'

RSpec.describe Genre, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject(:genre) { Genre.first }

  it "has tracks" do
    expect(genre.tracks.first.name).to eq("For Those About To Rock (We Salute You)")
  end

end
