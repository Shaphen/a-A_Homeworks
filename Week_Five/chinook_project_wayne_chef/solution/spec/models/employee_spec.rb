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
require 'rails_helper'

RSpec.describe Employee, type: :model do
  subject(:employee) { Employee.find_by(email: 'jane@chinookcorp.com') }
  
  it "has customers under support" do
    expect(employee.customers.count).to eq(21)
  end

  it "reports to managers(also employees)" do
    expect(employee.manager.first_name).to eq('Nancy')
  end

  context "validation" do
    it "allows employee to optionally have an manager" do
      expect do Employee.create!(
        first_name: "Richard",
        reports_to: Employee.find_by(first_name: "IDontExist"),
      ) end.to_not raise_error
    end
  end

end
