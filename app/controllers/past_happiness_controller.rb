class PastHappinessController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  helper_method :current_user, :logged_in?

end
