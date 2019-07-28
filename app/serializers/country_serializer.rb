class CountrySerializer < ActiveModel::Serializer
    attributes :id, :name, :region, :subregion, :currency
    has_many :create_trips
    has_many :users, through: :create_trips
end