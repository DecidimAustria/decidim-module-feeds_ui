# frozen_string_literal: true

module Decidim
  module FeedsUi
    class UsersController < Decidim::FeedsUi::ApplicationController
      # before_action :authorize_participatory_space, except: [:index]

      def index
        enforce_permission_to :read, :users
        @users = Decidim::User.all
      end
    end
  end
end