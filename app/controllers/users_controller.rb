class UsersController < ApplicationController
  def index
      if params[:keywords].present?
          @keywords = params[:keywords]
          user_search_term = UserSearchTerm.new(@keywords)
          @users = User.where(
              user_search_term.where_clause,
              user_search_term.where_args).
              order(user_search_term.order)
      else
          @users = []
      end
  end
end