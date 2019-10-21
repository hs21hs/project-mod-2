class AlbumsController < ApplicationController
  
  def show
    @album = Album.find(params[:id])
  end

  private

  def album_params
    params.require(:album).permit(:album_name, :main, :user_id)
  end
  

end
