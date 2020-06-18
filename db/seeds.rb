# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all

vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end

puts "... creating vendor_sweet"
VendorSweet.create(vendor: Vendor.first, sweet: Sweet.second, price: 15 )
VendorSweet.create(vendor: Vendor.second, sweet: Sweet.first, price: 16 )
VendorSweet.create(vendor: Vendor.third, sweet: Sweet.fourth, price: 18 )
VendorSweet.create(vendor: Vendor.fourth, sweet: Sweet.third, price: 20 )
puts "... finished "
