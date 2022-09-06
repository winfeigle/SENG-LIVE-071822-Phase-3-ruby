class AddColumnsToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :last_fed_at, :datetime
    add_column :pets, :last_walked_at, :datetime
  end
end
