class Employee < ApplicationRecord
  validates_presence_of :name
  validates_numericality_of :vacation_limit, :less_than_or_equal_to => 30

  has_many :vacation_requests
end
