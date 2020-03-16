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
class Customer < ApplicationRecord
    
end
