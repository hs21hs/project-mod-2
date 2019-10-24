class AlbumPicturesController < ApplicationController
    def index

    end

    def new
        @album_picture = AlbumPicture.new
    end

    def create
        @album_picture = AlbumPicture.new(album_picture_params)
        @album_picture.save
    end

    def destroy
        @picture = AlbumPicture.find(params[:id])
        @picture.destroy
        redirect_to album_path(current_user)
    end

    private

    def album_picture_params
        params.require(:album_picture).permit(:picture_id, :album_id)
    end

end

