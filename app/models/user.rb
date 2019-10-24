class User < ApplicationRecord
    has_many :albums
    has_many :likes
    has_many :pictures, through: :likes
    has_secure_password

    validates :username, uniqueness: true
    validates :password, length: { minimum: 5}
    validates :bio, presence: true
end


