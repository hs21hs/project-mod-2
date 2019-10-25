class PicturesController < ApplicationController

    def index
        if current_user
            @pictures = Picture.all
        else
            redirect_to home_index_path
        end
    end

    def show
        index
    end

    def new
        if current_user
            redirect_to pictures_path
        else
            redirect_to home_index_path
        end
    end

end