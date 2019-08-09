class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :description
  belongs_to :board
end
