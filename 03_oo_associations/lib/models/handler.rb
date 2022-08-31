class Handler
    attr_reader :id
    attr_accessor :name, :email, :phone
    @@all = []
    def initialize(attributes={})
        @id = @@all.length+1
        @name = attributes[:name]
        @email = attributes[:email]
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

    #Instance Methods
     
end 