# frozen_string_literal: true

module Decidim
  module FeedsUi
    # This is the engine that runs on the public interface of `FeedsUi`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::FeedsUi::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        # Add admin engine routes here
        # resources :feeds_ui do
        #   collection do
        #     resources :exports, only: [:create]
        #   end
        # end
        # root to: "feeds_ui#index"
      end

      def load_seed
        nil
      end
    end
  end
end
