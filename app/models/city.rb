class City < ApplicationRecord
    has_many :moods
    has_many :activities
end
