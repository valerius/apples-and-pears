class Apple < ApplicationRecord
  validates :name, :size, presence: true

  enum :size, {
    small: "small",
    large: "large"
  }
end
