class Owner < ActiveRecord::Base
    has_many :pets

    def get_all_pet_names
        self.pets.pluck(:name)
    end 
end 

#get 'owner/1'
# owner = Owner.find(1)
# owner.pets 