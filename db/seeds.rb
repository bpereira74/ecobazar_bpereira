# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require 'csv'
# puts 'Importing categories...'
# CSV.foreach(Rails.root.join('db/seeds/csv/conditions.csv'), headers: true) do |row|
#   Condition.create! do |condition|
#       condition.id = row[0]
#       condition.name = row[1]
#       condition.available = row[2]
#   end
# end

require 'csv'
puts 'Importing products...'
CSV.foreach(Rails.root.join('db/seeds/csv/products.csv'), headers: true) do |row|
  Product.create! do |ecoproduct|
      product.id = row[0]
      product.name = row[1]
      product.description = row[2]
      product.condition_id = row[3]
      product.price = row[4]
  end
end
