class Place < ApplicationRecord
  # talks to the "places" table
  has_many :entries, dependent: :destroy
end
