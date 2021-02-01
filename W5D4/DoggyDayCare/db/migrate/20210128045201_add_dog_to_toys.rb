class AddDogToToys < ActiveRecord::Migration[5.2]
  def change
    add_column(:toys, :dog_id, :integer, {null: false}) # {} optionals
    add_column(:toys, :color, :string, null: false)
    
  end
end
