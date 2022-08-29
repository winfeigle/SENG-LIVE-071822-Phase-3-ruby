require 'pry'
class Dog
  # attr_reader :name, :age, :image_url, :breed
  # attr_writer :name, :age, :image_url
  attr_reader :breed
  attr_accessor :name, :age, :image_url

  # ✅ we should be able to create dogs with a name, age, breed, and image_url
  def initialize(name, age, image_url, breed)
    @name = name
    @age = age
    @image_url = image_url
    @breed = breed
  end 

  # Mass Assignment - optional reviewed at the end of the video,  
  # def initialize(attributes)
  #   attributes.each do |attribute, value|
  #     self.send("#{attribute}=",value)
  #   end 
  # end 
  

  # ✅ we want to be able to access a dog's name, age, breed, image_url, last_fed_at and last_walked at times
  # def name
  #   @name
  # end

  # def age
  #   @age
  # end 

  # def age=(value)
  #   @age = value
  # end

  


  # ✅ we want to be able to print details about a dog (this time including the last walked at and last fed at times)
  def print
    puts "*************************"
    puts "Name: #{@name}"
    puts "Age: #{@age}"
    puts "Breed: #{@breed}"
    puts "Image: #{@image_url}"
    puts "*************************"
  end 

end

#Instances
#Dog.new()
d1 = Dog.new('Ash', 2, 'ash.jpg', 'husky')
d2 = Dog.new('Lennord', 1, 'lennord.jpg', 'pomeranian')
d3 = Dog.new('Winter', 9, 'winter.png', 'mix')

binding.pry