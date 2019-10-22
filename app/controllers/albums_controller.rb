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

  private

  def album_params
    params.require(:album).permit(:album_name, :main, :user_id)
  end
  

end
