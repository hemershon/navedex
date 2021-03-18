class UsersController < ApplicationController
  
  def create
    user = user.new(sign_up_params)

    if user.save
      toke = user.generate_jwt
        render json:token.to_json
    else
      render json: { errors: { 'email or password' => ['is invalid'] } },
      status: :unprocessable
  end
end
