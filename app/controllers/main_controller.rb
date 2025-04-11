class MainController < ApplicationController
  def index
    flash[:notice] = "Welcome to the Scheduled Tweets App!"
  end
end
