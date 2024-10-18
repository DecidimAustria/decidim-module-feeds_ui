# frozen_string_literal: true

module Decidim
  module FeedsUi
    module Admin
      # This controller is the abstract class from which all other controllers of
      # this engine inherit.
      class ApplicationController < Decidim::Admin::ApplicationController
        def permission_class_chain
          [::Decidim::FeedsUi::Admin::Permissions] + super
        end

        def user_not_authorized_path
          decidim.root_path
        end

        def user_has_no_permission_path
          decidim.root_path
        end
      end
    end
  end
end
