class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :bio, :email, :location, :profile_picture
    has_many :create_trips
    has_many :countries, through: :create_trips
    has_many :pictures, through: :create_trips
end