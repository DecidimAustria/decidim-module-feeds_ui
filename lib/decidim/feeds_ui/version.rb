# frozen_string_literal: true

module Decidim
  # This holds the decidim-meetings version.
  module FeedsUi
    VERSION = "1.0.0"
    COMPAT_DECIDIM_VERSION = [">= 0.28.0", "< 0.29"].freeze
    COMPAT_FEEDS_VERSION = [">= 1.0.0", "< 4"].freeze
    COMPAT_POSTS_VERSION = [">= 1.0.0", "< 3"].freeze
  end
end
