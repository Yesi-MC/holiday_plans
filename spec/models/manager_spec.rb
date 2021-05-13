require 'rails_helper'

RSpec.describe Manager, type: :model do
  describe "validations" do 
    it {should validate_presence_of :name }
  end

  describe "relationships" do 
    it {should have_many :vacation_requests}
  end
end