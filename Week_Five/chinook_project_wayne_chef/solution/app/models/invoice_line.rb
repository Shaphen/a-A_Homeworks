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
class InvoiceLine < ApplicationRecord

    belongs_to :track,
        primary_key: :id,
        foreign_key: :track_id,
        class_name: :Track

    belongs_to :invoice,
        primary_key: :id,
        foreign_key: :invoice_id,
        class_name: :Invoice
    
end
