class AlbumsController < ApplicationController
 
  def index
    redirect_to home_index_path
  end

  def show
    @album = Album.find(params[:id])
    unless current_user.id == @album.user_id
      flash[:notice] = "Sorry, you can't access this page"
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.update(album_name: params[:album][:album_name])
    redirect_to user_path(current_user.id)
  end

  def new
    if current_user
      @album = Album.new
    else
      redirect_to home_index_path
    end
  end

  def create
    @album = Album.create(album_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def album_params
    params.require(:album).permit(:album_name, :main, :user_id)
  end
  

end
