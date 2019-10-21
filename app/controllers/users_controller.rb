class UsersController < ApplicationController
  
  
  def new
    @user=User.new
  end

  def create
    x=User.create(user_params)
    Album.create(name:"#{x.username}'s main album", main:true, user_id: x.id)
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
