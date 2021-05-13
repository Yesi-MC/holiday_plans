class VacationRequest < ApplicationRecord
  validates_presence_of :status, 
                        :vacation_start_date,
                        :vacation_end_date

  belongs_to :employee
  belongs_to :manager, optional: true

  enum status: [:approved, :rejected, :pending]
end
