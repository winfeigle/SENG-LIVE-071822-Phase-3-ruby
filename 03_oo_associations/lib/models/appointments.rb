class Appointment  
  #Appointments Joins pets and handlers together for a many-to-many relationship

  #The appointments can be a walk or a drop-in visit
  attr_reader :id
  attr_accessor :request, :complete, :pet_id, :handler_id
  @@all = []
  def initialize(attributes = {})
    @id = @@all.length+1
    @request = attributes[:request]
    @complete = attributes[:complete]
    # Add pet_id and handler_id here and to attr_accessor
    @pet_id = attributes[:pet_id]
    @handler_id = attributes[:handler_id]
    
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