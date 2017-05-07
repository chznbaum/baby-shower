# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
User.create!(name: "Admin User",
             email: "admin@example.com",
             password: "passwordpassword",
             roles: "admin",
             avatar: "http://placehold.it/250x250")

User.create!(name: "Helper User",
             email: "helper@example.com",
             password: "passwordpassword",
             roles: "helper",
             avatar: "http://placehold.it/250x250")

User.create!(name: "Second Helper",
             email: "helper2@example.com",
             password: "passwordpassword",
             roles: "helper",
             avatar: "http://placehold.it/250x250")

User.create!(name: "Example User",
             email: "example@example.com",
             password: "passwordpassword",
             roles: "helper",
             avatar: "http://placehold.it/250x250")

User.create!(name: "Mom User",
             email: "mom@example.com",
             password: "passwordpassword",
             roles: "mom",
             avatar: "http://placehold.it/250x250")

User.create!(name: "Regular User",
             email: "regular@example.com",
             password: "passwordpassword",
             roles: "user",
             avatar: "http://placehold.it/250x250")

User.create!(name: "Second Regular",
             email: "regular2@example.com",
             password: "passwordpassword",
             roles: "user",
             avatar: "http://placehold.it/250x250")

puts "#{User.count} users created."

# Updates

10.times do
    3.times do |update|
        Update.create!(
            body: Faker::Lorem.words(20).join(" "),
            user_id: rand(1..5)
        )
    end
    Update.create!(
        body: Faker::Lorem.words(15).join(" "),
        image: "http://placehold.it/800x400",
        user_id: rand(1..5)
    )
end

puts "#{Update.count} updates created."

80.times do
    Comment.create!(
        body: Faker::Lorem.words(15).join(" "),
        user_id: rand(1..User.count),
        commentable_id: rand(1..Update.count),
        commentable_type: "Update"
    )
end

100.times do
    Comment.create!(
        body: Faker::Lorem.words(15).join(" "),
        user_id: rand(1..User.count),
        commentable_id: rand(41..(41 + Comment.count)),
        commentable_type: "Comment"
    )
end

puts "#{Comment.count} comments created."