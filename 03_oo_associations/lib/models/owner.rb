class Owner
    #Connect Owner to Pet in a one to many
    attr_reader :id
    attr_accessor :username, :email, :address, :phone
    @@all = []
    def initialize(attributes = {})
        @id = @@all.length+1
        @username = attributes[:username]
        @email = attributes[:email]
        @address = attributes[:address]
        @phone = attributes[:phone]
        @@all << self
    end 

    #.Class methods
    def self.all
        @@all
    end 

    def self.first
        @@all[0]
    end 
  
    def self.second
        @@all[1]
    end 
  
    def self.by_index(idx)
        @@all[idx]
    end 

    # Pet.all.filter((p) p.name == id)
    #Find every pet belonging to this owner
    def pets
        Pet.all.filter{|p| p.owner_id == self.id}
    end 

    #Return the name of every pet belonging to this owner
    def pet_names
        
    end 
    
    #Instance methods
    #Adopt a pet

    def pet_adopt(pet)
        pet.owner_id = self.id
    end 
end 