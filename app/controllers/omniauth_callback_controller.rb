class OmniauthCallbackController < ApplicationController
  def twitter
    render plain: "Twitter authentication successful. You can now use the app."
  end
end
