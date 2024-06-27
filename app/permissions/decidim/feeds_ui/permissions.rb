# frozen_string_literal: true

module Decidim
  module FeedsUi
    class Permissions < Decidim::DefaultPermissions
      def permissions
        return permission_action unless user

        case permission_action.subject
        when :users
          case permission_action.action
          when :read
            allow! if can_access?
          end
        end

        permission_action
      end

      private

      def can_access?
        user.present?
      end
    end
  end
end
