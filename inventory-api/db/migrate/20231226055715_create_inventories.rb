class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :item_name
      t.integer :status_id
      t.integer :number_in_store
      t.integer :number_sold
      t.date :date_purchased
      t.date :date_sold
      t.integer :purchase_location_id

      t.timestamps
    end
  end
end
