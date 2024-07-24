# frozen_string_literal: true

module Decidim
  module FeedsUi
    class UsersController < Decidim::FeedsUi::ApplicationController
      helper Decidim::Messaging::ConversationHelper

      helper_method :profile_holder, :active_content, :context_menu

      def index
        enforce_permission_to :read, :users
        @users = Decidim::User.all
      end

      def user_profile
        @user = Decidim::User.find(params[:id])
        # Additional logic for displaying the user's profile
      end

      def profile_holder
        return if params[:nickname].blank?

        @profile_holder ||= Decidim::UserBaseEntity.find_by("LOWER(nickname) = ? AND decidim_organization_id = ?", params[:nickname].downcase, current_organization.id)
      end

      def filter_users
        # @user = Decidim::User.find_by(name: params[:name], interest: params[:interest], apartment: params[:apartment])
        @users = Decidim::User.where("lower(name) like ?", "%#{params[:name].downcase}%")
        respond_to do |format|
          format.js
        end
      end

    end
  end
end