class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :ranking, :artist, :album, :image, :year
end
