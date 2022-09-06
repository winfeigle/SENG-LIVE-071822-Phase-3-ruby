class Pet < ActiveRecord::Base

    # class . 
    # instance #
    #CREATE
    # Pet.new -> Create a new instance, but it will not save the instance to the DB
    # pet#save -> Will save an instance to the DB
    # Pet.create -> Create a new instance AND save it to the DB 
    #READ
    # Pet.all -> return all of the pets 
    # Pet.find -> return one pet based on its ID
    # Pet.find_by({attribute:value}) -> return one pet based off an attribute
    # Pet.pluck(:attribute)
    # Pet.order(:name)
    # Pet.where 
    # Pet.first
    # Pet.count
    #UPDATE
    # Pet.update() -> Updates everything 
    # pet#update -> Updates one
    # pet#save -> save the changes to our DB
    #DELETE
    # pet#destroy
    # Pet.destroy_all
end 