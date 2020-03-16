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
    
end
