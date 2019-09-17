class Pet < ApplicationRecord
  validates :name, presence:true
  SPECIES = %w(dog cat turtle snake dragon unicorn)
  validates :species, inclusion: { in: SPECIES}
end
