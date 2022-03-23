class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :user_comment
  has_one :activity
  has_one :user
end
