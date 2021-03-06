class UsersController < ApplicationController
  
  def index
    redirect_to home_index_path
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
      if @user == current_user
        @main_album = current_user.albums.find_by(main: true)
      else
        flash.now[:notice] = "Sorry, you can't access this page"
      end
  end
  
  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      @album = Album.create(album_name:"#{@user.username}'s Main Album", main:true, user_id: @user.id)
      redirect_to pictures_path
    else
      render :new
    end
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password, :bio)
  end

end
  
