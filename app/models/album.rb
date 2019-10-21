class Album < ApplicationRecord
    belongs_to :user
    has_many :album_pictures
    has_many :pictures, through: :album_pictures

end
