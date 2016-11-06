class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  #not sure what a helper method is
  helper_method :current_user

private
  #Identify current user by Sql query and assign to object @user
  def current_user
    # @currentuser assigned User by user_id if/when session is the same
    @currentuser ||= User.find(session[:user_id]) if session[:user_id]

  end
end
