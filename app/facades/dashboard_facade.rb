class DashboardFacade

  attr_reader :user

  def initialize(user)
    @user = user
  end

  def users_count
    User.all.count
  end

  #def categories_count
  #  Category.all.count
  #end

  def products_count
    Product.all.count
  end

end
