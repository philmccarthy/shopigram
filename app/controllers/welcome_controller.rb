class WelcomeController < ApplicationController
  def index
    @community_users = User.community
  end
end
