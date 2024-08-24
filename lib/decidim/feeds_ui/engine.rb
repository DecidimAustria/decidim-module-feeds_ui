# frozen_string_literal: true

require "rails"
require "decidim/core"

require "decidim/feeds_ui/menu"

module Decidim
  module FeedsUi
    # This is the engine that runs on the public interface of feeds_ui.
    class Engine < ::Rails::Engine

      isolate_namespace Decidim::FeedsUi
      
      routes do
        # Add engine routes here
        # resources :feeds_ui
        # root to: "feeds_ui#index"
        get '/allusers', to: 'users#index'
        get '/user_profile/:id', to: 'users#user_profile', as: 'user_profile'
        get '/filter_users', to: 'users#filter_users', as: 'filter_users'
      end

      # this should make /allusers available at /feeds_ui/allusers
      initializer "decidim_feeds_ui.mount_routes" do
        Decidim::Core::Engine.routes do
          mount Decidim::FeedsUi::Engine, at: "/feeds_ui", as: "decidim_feeds_ui"
        end
      end
      
      initializer "decidim_feeds_ui.webpacker.assets_path" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end

      initializer "decidim_feeds_ui.add_cells_view_paths" do
        Cell::ViewModel.view_paths << File.expand_path("#{Decidim::FeedsUi::Engine.root}/app/cells")
        Cell::ViewModel.view_paths << File.expand_path("#{Decidim::FeedsUi::Engine.root}/app/views")
      end

      initializer "decidim_feeds_ui.register_icons" do
        Decidim.icons.register(name: "notification-line", icon: "notification-line", category: "system", description: "", engine: :feeds_ui)
        Decidim.icons.register(name: "filter-2-line", icon: "filter-2-line", category: "system", description: "", engine: :feeds_ui)
      end

      # initializer "decidim_feeds_ui.menu" do
      #   Decidim::FeedsUi::Menu.register_user_menu!
      # end
    end
  end
end
