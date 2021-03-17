class SessionsController < ApplicationController
  respond_to :json

  def new

  end

  def create
  end 
  
  private

  def respond_with(resource, _opts = {})
    render json: resourcee
  end

  def respond_to_on_destroy
    head :no_content
  end
end
