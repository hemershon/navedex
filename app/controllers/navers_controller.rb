class NaversController < ApplicationController
  before_action :set_naver, only: [:show, :store, :update, :destroy]
  before_action :set_naver, only: [:index]
  before_action :set_projects, only: [:store, :update]
  
    
    def index
      @navers = Naver.all 

      render json: @navers.as_json(except: [:created_at, :updated_at, :project_id])
    end

    def show
      @naver = Naver.all

      render json: @naver.as_json(include:  { project: { except:[ :created_at, :updated_at] }} )
    end
    
    def store
      @naver = Naver.all 
      
      render json: @naver
    end

    # def create 
    #   @naver = Naver.new(naver_params)

    #   if @naver.save
    #     render json: @naver, status: :created
    #   else
    #     render json: @naver.errors, status: :unprocesable_entity
    #   end
    # end
    
    def update
      if @naver.update(naver_params)
        render json: @naver 
      else
        render json: @naver.errors, status: :unprocessable_entity
      end
    end
    def destroy
      @naver.destroy
    end

    # private

    # def set_naver
    #   @naver = Navers.find(params[:id]) rescue nil
    # end

    def set_naver
      @navers = Navers.find(params[:id])
    end

    def naver_params
      params.require(:name).permit(:birthdate, :job_role, :admission_date, projects: [])
    end

    def valid_project_ids?
    projects_length = params[:projects].length @projects.length == projects_length
    end
    
    def set_projects
      @projects = projects.where(id: params[:projects])
    end
end
