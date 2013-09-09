class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :rent
      t.string :description
      t.string :address
      t.string :houseno
      t.string :street
      t.string :city
      t.string :country
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
