# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

statuses = ['pending', 'shipped', 'sold out']
locations = ['Amazon', 'Best Buy', 'Barnes and Noble']
item_names = ['Harry Potter: Hedgwig', 'Daisy Duck', 'Mickey Mouse', 'spaceship']
date_purchased = [3.months.ago, 4.months.ago, 5.months.ago]
date_sold = [1.months.ago, 20.days.ago, 3.days.ago, 3.hours.ago]

statuses.each do |status|
  Status.create(
    status_name: status
  )
end

locations.each do |location|
  PurchaseLocation.create(
    location_name: location
  )
end

item_names.each do |item|
  Inventory.create(
    item_name: item,
    status_id: Status.pluck(:id).sample,
    purchase_location_id: PurchaseLocation.pluck(:id).sample,
    number_in_store: [100, 120, 150, 200].sample,
    number_sold: [20, 30, 80, 90].sample,
    date_purchased: date_purchased.sample,
    date_sold: date_sold.sample
  )
end
