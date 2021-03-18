class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json
  before_action :process_token

  def authenticate_user!(options = {})
    head :unauthorized unless signed_in?
  end

  def signed_in?
    @current_user_id.preset?
  end
  
  def current_user
    @current_user ||= super || User.find(@current_user_id)
  end

  def process_token
    if request.headers['Authorization'].present?
      begin
    jwt_payload = JWT.decode(request.headers['Authprization'].split(' ')[1], Rails.application.secrets.secret_key_base).first
    @current_user_id = jwt_payload['id']
      rescue JWT::ExpiredSignature, JWT::verificationError, JWT::DecodeError
        head :unauthorized
      end
    end
  end

  def render_resource(resource)
    if resource.erros.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end 
  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end

  private

  def process_token
    #  if request.headers['Authorization'].present?    
  end
end
