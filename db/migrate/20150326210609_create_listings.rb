class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.integer :city_id
      t.integer :zip
      t.string :image
      t.integer :animal_id
      t.float :price
      t.integer :amenity_id
      t.timestamps
    end
  end
end
