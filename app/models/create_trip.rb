class CreateTrip < ApplicationRecord
    belongs_to :country
    belongs_to :user
    has_many :pictures
end
