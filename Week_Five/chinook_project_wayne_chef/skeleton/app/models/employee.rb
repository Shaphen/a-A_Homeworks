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

end
