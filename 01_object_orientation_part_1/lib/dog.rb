class Dog
  attr_reader :breed
  attr_accessor :name, :age, :image_url

  # ✅ we should be able to create dogs with a name, age, breed, and image_url
  def initialize(name, age, image_url, breed)
    @name = name
    @age = age
    @image_url = image_url
    @breed = breed
  end

  # ✅ we want to be able to access a dog's name, age, breed, image_url, last_fed_at and last_walked at times
  ## Getter methods (Not necessary when using macros above)
  # def name
  #   @name
  # end

  # def age
  #   @age
  # end

  ## Setter methods
  # def age=(value)
  #   @age = value
  # end

  # ✅ we want to be able to print details about a dog (this time including the last walked at and last fed at times)


end