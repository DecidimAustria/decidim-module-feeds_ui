require_dependency "decidim/feeds/application_controller"

module Decidim::Feeds
  class UsersController < ApplicationController
    def index
      @users = Decidim::User.all
    end
  end
end