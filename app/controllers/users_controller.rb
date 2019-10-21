class UsersController < ApplicationController
  
  def index
    @users = User.all
  end


  def new
    @user=User.new
  end

  def create
    @user=User.create(user_params)
    Album.create(album_name:"#{@user.username}'s main album", main:true, user_id: @user.id)
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
  
