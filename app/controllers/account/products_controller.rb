class Account::ProductsController < Account::AccountController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to account_products_path
    else
      render template: '/account/products/new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(product_params)
      redirect_to account_products_path
    else
      render template: '/account/products/edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to account_products_path
  end

  private

  def product_params
    params.require(:product).permit(
      :title,
      :description,
      :price,
      :picture,
       {tag_ids: []}
    ).merge(user_id: current_user.id)
  end
end
