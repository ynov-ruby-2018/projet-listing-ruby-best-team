class Api::V1::ApiController < Api::ApiController
    
  #  def index
  #      products = Product.all
   #     render json: { product: products }, status: :ok
   # end

   before_action :checkToken
    def productAll
        products = Product.all
        render json: {success: true, products: products} , status: 200 
    end

    def checkToken 
        user = User.find_by(auth_token: request.headers["token"])
        if user.nil?
            render json: {} , status: 401
        else
            return true
        end 
    end

end