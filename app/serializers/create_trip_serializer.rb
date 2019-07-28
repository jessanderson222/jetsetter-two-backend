class CreateTripSerializer < ActiveModel::Serializer
    attributes :id, :country_id, :user_id, :rating, :description, :price, :name
    belongs_to :user
    belongs_to :country
    has_many :pictures
    
end