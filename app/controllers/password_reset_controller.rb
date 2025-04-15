class PasswordResetController < ApplicationController
  def new
    render "password_reset/new"
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      # send email
      PasswordMailer.with(user: @user).reset.deliver_later
      redirect_to root_path, notice: "Password reset email sent"
    else
      flash.now[:alert] = "Email not found"
      render :new
    end
  end

  def edit
    @user = User.find_signed(params[:token], purpose: "password_reset")
    if @user.nil?
      redirect_to root_path, alert: "Invalid or expired token"
    else
      render "password_reset/edit"
    end
  end

  def update
    @user = User.find_signed(params[:token], purpose: "password_reset")
    if @user.update(password_params)
      redirect_to sign_in_path, notice: "Password updated successfully"
    else
      flash.now[:alert] = "Error updating password"
      render :edit
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
