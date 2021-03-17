class RegistrationsController < ApplicationController
  respond_to :json

  def create
    build_resource(sign_up_params)
    resource.save

    if resource.errors.emputy?
      render json: resource
    else
      render json: resource.errors
    end
  end
end
