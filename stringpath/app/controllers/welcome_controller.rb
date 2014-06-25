class WelcomeController < ApplicationController
  def index

    @graph = Koala::Facebook::API.new(current_user.oauth_token)
    @friends = @graph.get_connections("me", "feed")
    puts @friends
  end

  def connect

  end
end
