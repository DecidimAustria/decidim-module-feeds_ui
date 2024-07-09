# frozen_string_literal: true

module Decidim
  module FeedsUi
    # Custom helpers, scoped to the feeds_ui engine.
    #
    module ApplicationHelper
      def text_initials(name)
        name.split(/[\s.]+/).map(&:chr).slice(0, 2).join.upcase
      end

      def avatar_url(user)
        if user.avatar.attached?
          user.attached_uploader(:avatar).path(variant: :thumb)
        else
          ActionController::Base.helpers.asset_pack_path("media/images/default-avatar.svg")
        end
      end
    end
  end
end
