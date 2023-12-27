class CreatePurchaseLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_locations do |t|
      t.string :location_name

      t.timestamps
    end
  end
end
