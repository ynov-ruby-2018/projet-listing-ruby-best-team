class Api::V1::ApiController < Api::ApiController
    
  #  def index
  #      products = Product.all
   #     render json: { product: products }, status: :ok
   # end

   before_action :checkToken
    def index
        products = Product.all
        render json: {success: true, products: products}  
    end

    def checkToken 
        user = User.find_by(auth_token: request.headers["token"])
        if user.nil?
            render json: {success: false, errors: [
            {user: ["please authenticate on /api/v1/auth "]}
            ]}
        else
            return true
        end 
    end

end