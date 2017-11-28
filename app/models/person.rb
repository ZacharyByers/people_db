class Person < ApplicationRecord
  validates :age, numericality: { only_integer: true }
end
