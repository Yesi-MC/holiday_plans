require 'rails_helper'

describe "Employee Vacation Request Endpoint" do 
  describe "employee can create a vacation request" do 
    it "creates vacation request" do 
      employee1 = Employee.create(name: "Bob", vacation_limit: 30 )

      query_params = ({
                       vacation_start_date: "07/04/2021",
                       vacation_end_date: "07/06/2021",
                       employee_id: employee1.id, 
                       status: "pending"
                      })

      post "/api/v1/vacation_request", params: query_params 
      created_vacation = VacationRequest.last

      expect(response).to be_successful

      expect(created_vacation.status).to eq(query_params[:status])
      expect(created_vacation.vacation_start_date).to eq(query_params[:vacation_start_date])
      expect(created_vacation.vacation_end_date).to eq(query_params[:vacation_end_date])
      expect(created_vacation.employee_id).to eq(query_params[:employee_id])
    end
  end
end