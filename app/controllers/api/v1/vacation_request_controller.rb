class Api::V1::VacationRequestController < ApplicationController 

  def create 
    # require 'pry'; binding.pry
    render json: VacationRequestSerializer.new(VacationRequest.create(vacation_params)), status: 201

  end


  private 

  def vacation_params 
    params.permit(:vacation_start_date, :vacation_end_date, :employee_id, :status)
  end

end