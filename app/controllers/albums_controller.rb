class AlbumsController < ApplicationController
 
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])

    unless current_user.id == @album.user_id
      flash[:notice] = "Sorry, you cant access this page"
    end
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)
    # byebug
    redirect_to user_path(current_user.id)
  end

  private

  def album_params
    params.require(:album).permit(:album_name, :main, :user_id)
  end
  

end
