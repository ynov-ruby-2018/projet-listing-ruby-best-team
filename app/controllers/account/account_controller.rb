class Account::AccountController < ApplicationController

  befor_action :authenticate_user!
  #layout 'account'
end
