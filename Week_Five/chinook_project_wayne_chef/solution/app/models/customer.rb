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

    belongs_to :support_rep,
        primary_key: :id,
        foreign_key: :support_rep_id,
        class_name: :Employee

    has_many :invoices,
           primary_key: :id,
           foreign_key: :customer_id,
           class_name: :Invoice

    has_many :purchased_items,
        through: :invoices,
        source: :items

    has_many :purchased_tracks,
        through: :purchased_items,
        source: :track
    
end
