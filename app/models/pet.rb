class Pet < ApplicationRecord
  SPECIES = ["dog", "cat", "fish", "snake"]
  validates :species, inclusion: { in: SPECIES }
  validates :name, presence: true
end
