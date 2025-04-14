class MainController < ApplicationController
  def index
    flash[:notice] = "Welcome to the Scheduled Tweets App!"
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end
end
