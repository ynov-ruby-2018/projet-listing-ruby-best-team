class Api::V1::AuthController < Api::ApiController
  def create
    user = User.find_by(email: params[ :email])
    if user
      if user.valid_password?(params[:password])
           token = user.generate_token
      end
    end

    if token
      render json: {success: true, token: token},
      status: 200
    else
      render json: {success: false, errors: [
        {user: ["Invalid password"]}
      ]},
      status: 401
    end
  end


end
