class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.references :user, foreign_key: true
      t.references :truck_type, foreign_key: true
      t.references :truck_merchandise, foreign_key: true
      t.references :truck_load, foreign_key: true
      t.references :coverage, foreign_key: true
      t.references :city, foreign_key: true
      t.boolean :gps
      t.boolean :available_now
      t.text :image
      t.float :latitude
      t.float :longitude
      t.float :price_per_km

      t.timestamps
    end
  end
end
