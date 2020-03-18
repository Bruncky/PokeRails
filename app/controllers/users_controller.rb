class UsersController < ApplicationController
  def show
      @user = current_user
  end

  def new
    @user = User.new(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :encrypted_password)
  end
end
