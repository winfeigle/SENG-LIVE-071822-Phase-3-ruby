class Handler < ActiveRecord::Base
  has_many :appointments 
  has_many :pets, through: :appointments
end