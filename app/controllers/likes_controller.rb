class LikesController < ApplicationController
  
  def index
    redirect_to home_index_path
  end

  def show
    redirect_to home_index_path
  end
  
  def create
    Like.create(like_params)
    @gallery = Album.find_by(user_id: current_user.id, main: true)
    redirect_to pictures_path
  end

  def destroy
    Like.destroy(params[:id])
    redirect_to pictures_path
  end

  private

    def like_params
        params.require(:like).permit(:picture_id, :user_id)
    end

end
