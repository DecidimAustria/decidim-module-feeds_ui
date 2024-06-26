# frozen_string_literal: true

module Decidim
  module FeedsUi
    class UsersController < Decidim::FeedsUi::ApplicationController
      def index
        enforce_permission_to :read, :post
        @users = Decidim::User.all
      end
    end
  end
end