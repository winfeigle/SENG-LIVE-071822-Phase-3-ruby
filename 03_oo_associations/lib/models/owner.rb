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

    def self.by_index(idx)
        @@all[idx]
    end 
    
    
    #Instance methods
end 