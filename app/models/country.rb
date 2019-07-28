class Country < ApplicationRecord
    has_many :create_trips
    has_many :users, through: :create_trips
    has_many :pictures, through: :create_trips
end
