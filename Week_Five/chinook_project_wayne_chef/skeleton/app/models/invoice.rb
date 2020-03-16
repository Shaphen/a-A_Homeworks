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
class Invoice < ApplicationRecord
    
end
