class BoardSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :images
end
