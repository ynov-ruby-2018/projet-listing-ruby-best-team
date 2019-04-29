class Api::V1::ApiController < Api::ApiController
    
  #  def index
  #      products = Product.all
   #     render json: { product: products }, status: :ok
   # end

    def index
        user = User.find_by(auth_token: request.headers["token"])
        products = Product.all
        if user.nil?
            render json: {success: true, errors: [
            {user: ["please authenticate on /api/v1/auth "]}
            ]}
        else
            render json: {success: false, products: products} 
        end 
    end

end