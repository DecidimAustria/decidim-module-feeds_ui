

# frozen_string_literal: true

# module Decidim
#   module FeedsUi
#     module Admin
#       class sersController < Decidim::FeedsUi::Admin::ApplicationController
#         def filter_users
#           @users = User.all
#           @users = @users.where('name LIKE ?', "%#{params[:name]}%") if params[:name].present?
#           @users = @users.where(interest: params[:interest]) if params[:interest].present?
#           @users = @users.where(apartment: params[:apartment]) if params[:apartment].present?

#           respond_to do |format|
#             format.js
#           end
#         end
#       end
#     end
#   end
# end