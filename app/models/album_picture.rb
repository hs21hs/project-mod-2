class AlbumPicture < ApplicationRecord
    belongs_to :album
    belongs_to :picture
end
