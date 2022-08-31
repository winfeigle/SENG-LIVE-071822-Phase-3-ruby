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

    #Find every pet belonging to this owner

    #Return the name of every pet belonging to this owner
    
    
    #Instance methods
    #Adopt a pet
end 