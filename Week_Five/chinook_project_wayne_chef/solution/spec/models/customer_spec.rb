# == Schema Information
#
# Table name: customers
#
#  id             :integer          not null, primary key
#  address        :string
#  city           :string
#  company        :string
#  country        :string
#  email          :string
#  fax            :string
#  first_name     :string
#  last_name      :string
#  phone          :string
#  postal_code    :string
#  state          :string
#  created_at     :datetime
#  updated_at     :datetime
#  support_rep_id :integer
#
require 'rails_helper'

RSpec.describe Customer, type: :model do
  subject(:customer) { Customer.first }
  it "has invoices" do
    expect(customer.invoices.count).to eq(7)
  end

  it "has purchased items through invoices" do
    expect(customer.purchased_items.first.unit_price).to eq(1.99)
  end

  it "has tracks through purchased items" do
    expect(customer.purchased_tracks.third.name).to eq('Lixo Do Mangue')
  end

  it "has support representative" do
    expect(customer.support_rep.email).to eq('jane@chinookcorp.com')
  end

end
