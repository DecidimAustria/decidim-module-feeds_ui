# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module FeedsUi
    # This is the engine that runs on the public interface of feeds_ui.
    class Engine < ::Rails::Engine

      routes do
        # Add engine routes here
        # resources :feeds_ui
        # root to: "feeds_ui#index"
        get '/allusers', to: 'users#index'
      end

      # this should make /allusers available at /feeds_ui/allusers
      initializer "FeedsUi.mount_routes" do
        Decidim::Core::Engine.routes do
          mount Decidim::FeedsUi::Engine, at: "/feeds_ui", as: "decidim_feeds_ui"
        end
      end
      
      isolate_namespace Decidim::FeedsUi

      initializer "FeedsUi.webpacker.assets_path" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end

      initializer "FeedsUi.add_cells_view_paths" do
        Cell::ViewModel.view_paths << File.expand_path("#{Decidim::FeedsUi::Engine.root}/app/cells")
        Cell::ViewModel.view_paths << File.expand_path("#{Decidim::FeedsUi::Engine.root}/app/views")
      end

      initializer "Feeds.register_icons" do
        Decidim.icons.register(name: "notification-line", icon: "notification-line", category: "system", description: "", engine: :feedsUi)
        Decidim.icons.register(name: "filter-2-line", icon: "filter-2-line", category: "system", description: "", engine: :feedsUi)
      end

    end
  end
end
