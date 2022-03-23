class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :description, :favorite, :likes, :rating, :most_popular
  has_one :mood
  has_one :city
end
