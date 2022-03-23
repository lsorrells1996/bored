class Activity < ApplicationRecord
  belongs_to :mood
  belongs_to :city

  has_many :comments
  has_many :users, through: :comments
end
