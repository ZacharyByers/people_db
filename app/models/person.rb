class Person < ApplicationRecord
  has_many :pets, dependent: :destroy
end
