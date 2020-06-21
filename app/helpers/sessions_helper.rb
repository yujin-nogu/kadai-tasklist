module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
end


# 上記と同意①
# if @current_user
#   return @current_user
# else
#   @current_user = User.find_by(id: session[:user_id])
#   return @current_user
# end


# 上記と同意②
# if current_user
#   return true
# else
#   return false
# end

