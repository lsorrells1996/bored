class User < ApplicationRecord
    has_many :comments
    has_many :activities, through: :comments
end
