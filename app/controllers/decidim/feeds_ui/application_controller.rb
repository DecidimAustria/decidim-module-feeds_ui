# frozen_string_literal: true

module Decidim
  module FeedsUi
    # This controller is the abstract class from which all other controllers of
    # this engine inherit.
    #
    # Note that it inherits from `Decidim::Components::BaseController`, which
    # override its layout and provide all kinds of useful methods.
    class ApplicationController < Decidim::ApplicationController
      helper Decidim::FeedsUi::ApplicationHelper

      def permission_class_chain
        [
          ::Decidim::FeedsUi::Permissions,
          ::Decidim::Permissions
        ]
      end
      
    end
  end
end
