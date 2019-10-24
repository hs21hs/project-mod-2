class AlbumPicturesController < ApplicationController
    def index

    end

    def create
        AlbumPicture.create(album_picture_params)
    end

    def destroy
        @picture = AlbumPicture.find(params[:id])
        @picture.destroy
        redirect_to album_path(current_user.Albums.find)
    end

    private

    def album_picture_params
        params.permit(:picture_id, :album_id)
    end

end

