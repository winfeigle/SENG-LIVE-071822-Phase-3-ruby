class Handler < ActiveRecord::Base
    has_many :appointments
    has_many :pets, through: :appointments

    #get '/handler/1
   # Appointments
   # Pets

   #find the number of pets that belong to a handler
   def number_of_pets
        self.pets.count
   end 
   # the handler with the most pets
   def self.most_pets
        # most_pets = 0
        # handler_with_most_pets 
        # Handler.all.each do |h| 
        #     if h.pets.count > most_pets
        #         most_pets = h.pets.count
        #         handler_with_most_pets = h
        #     end 
        # end 
        
        # Handler.all.max_by{|h| h.pets.count}
   end 

end 