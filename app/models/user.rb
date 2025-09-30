class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  enum :role, {
    apple_intern: "apple_intern",
    apple_consultant: "apple_consultant",
    pear_consultant: "pear_consultant",
    admin: "admin"
  }
end
