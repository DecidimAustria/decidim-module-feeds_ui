# frozen_string_literal: true

module Decidim
  module FeedsUi
    # Custom helpers, scoped to the feeds_ui engine.
    #
    module ApplicationHelper
      def text_initials(name)
        name.split(/[\s.]+/).map(&:chr).slice(0, 2).join.upcase
      end
    end
  end
end
