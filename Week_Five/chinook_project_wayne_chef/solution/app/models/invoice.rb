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

    belongs_to :customer,
        primary_key: :id,
        foreign_key: :customer_id,
        class_name: :Customer

    has_many :items,
        primary_key: :id,
        foreign_key: :invoice_id,
        class_name: :InvoiceLine

    has_many :tracks,
        through: :items,
        source: :track
    
end
