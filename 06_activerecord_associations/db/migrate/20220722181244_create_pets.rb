class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :image_url
      t.datetime :last_fed_at
      t.datetime :last_walked_at
    end 
  end
end
