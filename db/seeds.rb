# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Updates
10.times do |x|
    3.times do |update|
        Update.create!(
            body: Faker::Lorem.words(20).join(" ")
        )
    end
    Update.create!(
        body: Faker::Lorem.words(15).join(" "),
        image: "http://placehold.it/350x200"
    )
end

puts "#{Blog.count} blog posts created."