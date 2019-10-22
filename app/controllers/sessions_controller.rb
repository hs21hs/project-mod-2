class SessionsController < ApplicationController

    def new
        
    end

    def create
        @user = User.find_by(username: params[:user][:username])
    end


session[:user_id] = @user.user_id
redirect_to users_path

end
