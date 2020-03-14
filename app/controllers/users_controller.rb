class UsersController < ApplicationController

skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:username, :password))
    session[:user_id] = @user.id
    redirect_to '/welcome'
  end
end
#params.require(:customer).permit(:first_name, :last_name, :business_no, :email, :password_digest, :business_id) #replace company with company ID

##params.require(:customer).permit(:first_name, :last_name, :business_no, :email, :password, :password_confirmation :business_id) #replace company with company ID
