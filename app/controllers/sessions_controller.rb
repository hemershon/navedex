class SessionsController < Devise::SessionsController
  respond_to :json

  def create
    if @user && @user.authenticate(user_params[:password])
    render_user_with_token
    else
    render json: { errors: ('errors.invalid') }, status: :unprocessable_entity
    end
  end 
  
  def new 
    render json: @user
  end
  
  private

  def user_params
    params.require(:user).permit(:email, :password, :jwt)
  end

  def render_user
    if @user
      render Json: @user, status: :created
    else
      render json: { errors: 'Email or password was invalid' },
      status: :unprocessable_entity
    end
  end

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end
end
