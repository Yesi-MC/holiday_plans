require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe "validations" do 
    it {should validate_presence_of :name }
    it {should validate_numericality_of :vacation_limit }
  end

  describe "relationships" do 
    it {should have_many :vacation_requests}
  end
end
