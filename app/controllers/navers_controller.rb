class NaversController < ApplicationController
    
    def index
     navers = Naver.all
     render json: @navers
    end

    def show
      
    end
end
