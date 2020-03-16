# == Schema Information
#
# Table name: invoice_lines
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  unit_price :float
#  created_at :datetime
#  updated_at :datetime
#  invoice_id :integer
#  track_id   :integer
#
require 'rails_helper'

RSpec.describe InvoiceLine, type: :model do
  subject(:invoice_item) { InvoiceLine.first }

  it "has a track" do
    expect(invoice_item.track.name).to eq('Balls to the Wall')
  end

  it "belongs to a invoice" do
    expect(invoice_item.invoice.total).to eq(1.98)
  end
end
