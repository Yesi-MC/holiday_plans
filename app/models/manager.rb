class Manager < ApplicationRecord
  validates_presence_of :name 

  has_many :vacation_requests

end
