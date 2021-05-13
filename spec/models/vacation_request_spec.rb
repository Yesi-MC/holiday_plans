require 'rails_helper'

RSpec.describe VacationRequest, type: :model do
  describe "validations" do 
    it {should validate_presence_of :status}
    it {should validate_presence_of :vacation_start_date}
    it {should validate_presence_of :vacation_end_date}
  end

  describe "relationships" do 
    it {should belong_to :employee}
    it {should belong_to :manager}

  end
end
