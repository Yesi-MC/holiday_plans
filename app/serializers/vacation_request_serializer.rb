class VacationRequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :status, :vacation_start_date, :vacation_end_date
end
