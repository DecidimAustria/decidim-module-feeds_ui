# frozen_string_literal: true

module Decidim
  module FeedsUi
    class Menu
      def self.register_user_menu!
        Decidim.menu :user_menu do |menu|
          menu.add_item :sign_out,
                        t("sign_out", scope: "decidim.components.feeds_ui.userMenu"),
                        decidim.destroy_user_session_path,
                        position: 1000,
                        active: :exact,
                        method: :delete
        end
      end
    end
  end
end
