# == Schema Information
#
# Table name: employees
#
#  id          :integer          not null, primary key
#  address     :string
#  birthdate   :datetime
#  city        :string
#  country     :string
#  email       :string
#  fax         :string
#  first_name  :string
#  hiredate    :datetime
#  last_name   :string
#  phone       :string
#  postal_code :string
#  reports_to  :integer
#  state       :string
#  title       :string
#  created_at  :datetime
#  updated_at  :datetime
#
class Employee < ApplicationRecord

    belongs_to :manager,
        primary_key: :id,
        foreign_key: :reports_to,
        class_name: :Employee,
        optional: true

    has_many :customers,
        primary_key: :id,
        foreign_key: :support_rep_id,
        class_name: :Customer
    
end
