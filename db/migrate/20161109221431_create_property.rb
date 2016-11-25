class CreateProperty < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.belongs_to :user
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zipcode, null: false
      t.string :longitude, null: false
      t.string :latitude, null: false
      t.string :year_built, null: false
      t.string :bathroom, null: false
      t.string :bedroom, null: false
      t.string :lot_size, null:false
      t.string :sqft, null: false
      t.string :house_type, null: false
      t.boolean :portfolio
    end
  end
end
