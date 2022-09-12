class PetsController < ApplicationController
    #Read
    get '/pets' do
        pets = Pet.all 
        pets.to_json
    end

    get '/pets/:id' do
        pet = Pet.find(params[:id])
        pet.to_json
    end 

    get '/pets/:id/recent_request' do
        pet = Pet.find(params[:id])
        pet.recent_request.to_json
    end 
    #Create
    post '/pets' do
        pet = Pet.create(pet_params)
        status 201
        pet.to_json

    end 
    #Update
    patch '/pets/:id' do 
        pet = Pet.find(params[:id])
        pet.update(pet_params) 
        pet.to_json
    end 
    #Destroy

    delete '/pets/:id' do
        pet = Pet.find(params[:id])
        pet.destroy
        status 204
    end 

 


    private 

    def pet_params
        {name:params[:name], breed:params[:breed], image_url:params[:image_url], age: params[:age], owner_id: params[:owner_id]}
    end 

end 