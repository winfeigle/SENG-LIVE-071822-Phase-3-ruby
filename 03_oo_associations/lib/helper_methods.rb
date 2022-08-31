#Creates instances of our classes using our data.
def seed_dogs
  $dogs_data.each{|d| Dog.new(d)}
end 

def seed_cats
  $cats_data.each{|c| Cat.new(c)}
end 

def seed_owners
  $owner_data.each{|o| Owner.new(o)}
end

def seed_handlers
  $handler_data.each{|h| Handler.new(h)}
end 

def seed_adoptions
  Pet.all.each{|p| Owner.all.sample.pet_adopt(p)}
end 

def seed_appointments
  100.times{Appointment.new(request:'walk', complete:false, pet_id:Pet.all.sample.id, handler_id:Handler.all.sample.id)}
end 

def seed
  puts "Starting seeding...."
  puts "seeding dogs..."
  seed_dogs
  puts "seeding cats..."
  seed_cats
  puts "seeding owners..."
  seed_owners
  puts "seeding handlers..."
  seed_handlers
  puts "seeding adoptions"
  seed_adoptions
  puts "seeding appointments"
  seed_appointments
  puts "done"
end 