class ProjectsController < ApplicationController
  include ActiveSerializer::SerializableObject
  before_action :set_project, only: [:show, :update, :destroy]

  # def index 
  #   render json: @projects, include: [:navers]
  # end

  # def show    
  #   render json: @project, include: [:navers]
  # end  

  # def create 
  #   @project = Project.new(project_params)
    
  #   if @project.save
  #     render json: @project, include: [:navers], status: :created 
  #   else
  #     render json:@project.errors, status: :unprocessable_entity
  #   end
  # end

  # def update 
  #   if @project.update(project_params)
  #     render json: @project, include: [:navers]
  #   else
  #     render json: @project.errors, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @project.destroy
  # end
  

  # private

  # def set_project
  #   @project = Project.find(params[:id])
  # end

  # def project_params
  #   params.require(:project).permit(:name, navers_ids: [])
  # end
  def set_projects
    unless query_projects_params.empty?
      @projects = current_user.projects.filter_by_name(params[:name]) rescue nil
    end
    @projects ||= current_user.projects
  end
end
