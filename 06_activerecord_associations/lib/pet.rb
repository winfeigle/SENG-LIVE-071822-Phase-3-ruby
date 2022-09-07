class Pet < ActiveRecord::Base
    #one to many
    belongs_to :owner

    #many to many
    has_many :appointments
    has_many :handlers, through: :appointments
    #get 'pet/1'
    # pet = Pet.find(1)
    # pet.owner 

    def self.get_all_pet_names 
        Pet.pluck(:name)
    end 
    #all of the handlers for a pet
    def get_all_handler_names
        self.handlers.pluck(:name)
    end 
    #Find all of the pets that are 5 years or old
    def self.find_old_pets
        Pet.where('age > ?', 5)
    end 

    def self.pets_in_alph
        Pet.order(:name)
    end 

end 

