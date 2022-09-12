class Appointment < ActiveRecord::Base
  belongs_to :handler 
  belongs_to :pet
end