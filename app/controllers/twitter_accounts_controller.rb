class TwitterAccountsController < ApplicationController
  before_action :require_user_logged_in
  before_action :set_twitter_account, only: [ :destroy ]

  def index
    @twitter_accounts = Current.user ? Current.user.twitter_accounts : []
  end

  def destroy
    if @twitter_account.destroy
      flash[:notice] = "#{@twitter_account.username}'s account was successfully removed."
      redirect_to twitter_accounts_path
    else
      flash[:error] = "Failed to remove Twitter account."
      redirect_to twitter_accounts_path
    end
  end

  private

  def set_twitter_account
    @twitter_account = Current.user.twitter_accounts.find(params[:id])
  end
end
