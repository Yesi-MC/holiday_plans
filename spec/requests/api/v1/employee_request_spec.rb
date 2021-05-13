require 'rails_helper'

describe "Employee Vacation Request Endpoint" do 
  describe "employee can create a vacation request" do 
    it "creates vacation request" do 
      employee1 = Employee.create(name: "Bob", vacation_limit: 30 )

      query_params = ({
                       vacation_start_date: "07/04/2021",
                       vacation_end_date: "07/06/2021",
                       employee_id: employee1.id
                      })

      post "/api/v1/vacation_requests", params: query_params 
      

      expect(response).to be_succesful
    end
  end
end