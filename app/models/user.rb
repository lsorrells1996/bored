class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :activities, through: :comments
end
