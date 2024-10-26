# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/feeds_ui/version"

Gem::Specification.new do |s|
  s.version = Decidim::FeedsUi::VERSION
  s.authors = ["Alexander Rusa", "Piero Chiussi"]
  s.email = ["alex@rusa.at", "info@webchroma.de"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/DecidimAustria/decidim-module-feeds_ui/"
  s.metadata = {
    "bug_tracker_uri" => "https://github.com/DecidimAustria/decidim-module-feeds_ui/issues",
    "source_code_uri" => "https://github.com/DecidimAustria/decidim-module-feeds_ui/"
  }
  s.required_ruby_version = "~> 3.1"

  s.name = "decidim-feeds_ui"
  s.summary = "Reduced UI enhancing decidim-feeds"
  s.description = "A very Reduced UI specific for Decidim platforms focussed on social feeds and posts."

  s.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").select do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w(app/ config/ db/ lib/ LICENSE-AGPLv3.txt Rakefile README.md))
    end
  end

  s.add_dependency "decidim-core", Decidim::FeedsUi::COMPAT_DECIDIM_VERSION
  s.add_dependency "decidim-feeds", Decidim::FeedsUi::COMPAT_FEEDS_VERSION
  s.add_dependency "decidim-posts", Decidim::FeedsUi::COMPAT_POSTS_VERSION
end
