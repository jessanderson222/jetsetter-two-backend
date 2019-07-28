class User < ApplicationRecord
    has_many :create_trips
    has_many :countries, through: :create_trips
    has_many :pictures, through: :create_trips
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :email, presence: true, uniqueness: { case_sensitive: false }

    has_secure_password
end
