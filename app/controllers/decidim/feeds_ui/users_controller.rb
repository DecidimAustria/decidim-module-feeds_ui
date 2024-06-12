require_dependency "decidim/feeds/application_controller"

module Decidim::FeedsUi
  class UsersController < ApplicationController
    helper Decidim::FeedsUi::ApplicationHelper
    def index
      @users = Decidim::User.all
    end
  end
end