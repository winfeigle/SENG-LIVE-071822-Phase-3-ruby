class Pet < ActiveRecord::Base 
  belongs_to :owner
  has_many :appointments 
  has_many :handlers, through: :appointments
  
  def recent_request
    self.appointments.where("time > ?", 1.hour.ago)
  end 
end