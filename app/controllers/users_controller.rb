class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end
  
  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      @album = Album.create(album_name:"#{@user.username}'s main album", main:true, user_id: @user.id)
      redirect_to user_path(@user)
    end
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
  
