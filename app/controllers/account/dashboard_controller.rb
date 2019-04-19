class Account::DashboardController < Account::AccountController

  def index
    @data = DashboardFacade.new(current_user)
  end

end
