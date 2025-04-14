class PasswordsController < ApplicationController
  before_action :require_user_logged_in 

  def edit
    render "passwords/edit"
  end

  def update
    if Current.user.update(password_params)
      flash[:notice] = "Password updated successfully"
      redirect_to root_path
    else
      flash.now[:alert] = "Failed to update password"
      render :edit
    end
  end

  private
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
