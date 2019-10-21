class Picture < ApplicationRecord
    has_many :album_pictures
    has_many :albums, through: :album_pictures
    

    def my_users
        self.albums.map do |album|
            album.user.username
        end
    end

    
end
