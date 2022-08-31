class Dog < Pet
  #Dog inherits from Pet
  #attributes unique to Dog

  #.Class Method
  def self.all
    @@all.filter{|p| p.class == self}
  end 


  def greet
    puts "Who's a good pupper??"
  end
end

