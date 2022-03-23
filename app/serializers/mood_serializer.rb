class MoodSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :city
end
