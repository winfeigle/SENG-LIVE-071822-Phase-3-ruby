class Appointment < ActiveRecord::Base
    belongs_to :pet
    belongs_to :handler
    #get '/appointments/1`
    # Handler
    # Pet
end 