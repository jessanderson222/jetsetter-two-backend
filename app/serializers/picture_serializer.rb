class PictureSerializer < ActiveModel::Serializer
    attributes :id, :url, :caption
    belongs_to :create_trip
end