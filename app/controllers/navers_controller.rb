class NaversController < ApplicationController
    
    def index
        @navers = current_user.navers 

        render json: @navers
    end
end
