class SessionsController < Devise::SessionsController
  respond_to :json

  def create
    user = User.find_by_email(sign_in_params[:email])

    if user && user.valid_password?(sign_in_params[:password])
      token = user.generate_jwt
      render json: token.to_json
    else
      render json: { errors: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end 
  
  private

  # def user_params
  #   params.require(:user).permit(:email, :password, :jwt)
  # end

  # def render_user
  #   if @user
  #     render Json: @user, status: :created
  #   else
  #     render json: { errors: 'Email or password was invalid' },
  #     status: :unprocessable_entity
  #   end
  # end

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end
end
