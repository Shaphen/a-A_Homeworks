# == Schema Information
#
# Table name: invoices
#
#  id                  :integer          not null, primary key
#  billing_address     :string
#  billing_city        :string
#  billing_country     :string
#  billing_postal_code :string
#  billing_state       :string
#  invoice_date        :datetime
#  total               :float
#  created_at          :datetime
#  updated_at          :datetime
#  customer_id         :integer
#
require 'rails_helper'

RSpec.describe Invoice, type: :model do
  subject(:invoice) { Invoice.first }
  it "has invoice items" do
    expect(invoice.items.first.unit_price).to eq(0.99)
  end

  it "has a customer" do
    expect(invoice.customer.email).to eq('leonekohler@surfeu.de')
  end

  it "has tracks through items" do
    expect(invoice.tracks.second.name).to eq('Restless and Wild')
  end
end
