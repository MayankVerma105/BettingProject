class Betting < ApplicationRecord
  has_many :matchids
  
  validates :match, presence: true
  validates :team, presence: true, length: { minimum: 4 }
end