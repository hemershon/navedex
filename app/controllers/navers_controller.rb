class NaversController < ApplicationController
    
    def index
     navers = Naver.all
     
     respond_to do |format|
      format.json { render json: navers }
      format.xml  { render xml: navers }
     end
    end

    def show
      naver = Naver.find(params[:id]).projects
      render json: naver
    end

    private

    def naver_params(:name, :birthdate, :job_role, :admission_date)
end
