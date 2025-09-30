# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

apple_intern = User.create! email_address: "apple_intern@example.com", password: "testtest", role: "apple_intern"
apple_consultant = User.create! email_address: "apple_consultant@example.com", password: "testtest", role: "apple_consultant"
pear_consultant = User.create! email_address: "pear_consultant@example.com", password: "testtest", role: "pear_consultant"
admin = User.create! email_address: "admin@example.com", password: "testtest", role: "admin"

Apple.create! name: "Granny Smith", size: "small"
Apple.create! name: "Golden Delicious", size: "large"
