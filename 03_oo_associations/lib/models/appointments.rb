class Appointment  
  #Appointments Joins pets and handlers together for a many-to-many relationship

  #The appointments can be a walk or a drop-in visit
  attr_reader :id
  attr_accessor :request, :complete
  @@all = []
  def initialize(attributes = {})
    @id = @@all.length+1
    @request = attributes[:request]
    @complete = attributes[:complete]
    # Add pet_id and handler_id here and to attr_accessor
    
    @@all << self
  end 

  #Class methods
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

  #Instance methods

end