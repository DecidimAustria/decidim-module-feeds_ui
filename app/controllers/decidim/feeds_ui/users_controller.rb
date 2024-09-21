# frozen_string_literal: true

module Decidim
  module FeedsUi
    class UsersController < Decidim::FeedsUi::ApplicationController
      helper Decidim::Messaging::ConversationHelper

      helper_method :profile_holder, :active_content, :context_menu

      def index
        enforce_permission_to :read, :users
        @users = confirmed_users
      end

      def user_profile
        @user = confirmed_users.find(params[:id])
        # Additional logic for displaying the user's profile
      end

      def profile_holder
        return if params[:nickname].blank?

        @profile_holder ||= Decidim::UserBaseEntity.find_by("LOWER(nickname) = ? AND decidim_organization_id = ?", params[:nickname].downcase, current_organization.id)
      end

      def filter_users
        # @user = Decidim::User.find_by(name: params[:name], interest: params[:interest], apartment: params[:apartment])
        query = params[:name].downcase
        @users = confirmed_users.where("lower(name) LIKE ? OR lower(nickname) LIKE ?", "%#{query}%", "%#{query}%")
        respond_to do |format|
          format.js
        end
      end

      private

      def organization_users
        Decidim::User.where(organization: current_organization)
      end

      def confirmed_users
        organization_users.confirmed
      end

    end
  end
end