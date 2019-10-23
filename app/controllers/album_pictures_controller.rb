class AlbumPicturesController < ApplicationController
    def index
       byebug 
    end

    def create
        AlbumPicture.create(album_picture_params)
    end

    private

    def album_picture_params
        params.permit(:picture_id, :album_id)
    end

end

