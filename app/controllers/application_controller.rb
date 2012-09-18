class ApplicationController < ActionController::Base  
  protect_from_forgery
  helper_method :current_course
  helper_method :current_user
  before_filter :authorize
  def current_course
     @course = Course.find(params[:id])
  end
  
  private


   def current_user

     current_user ||= User.find(session[:user_id]) if session[:user_id]

   end


   def not_authenticated
     redirect_to root_url, :alert => "Solo podras ingresar mediante tu cuenta de facebook."
   end
   protected
    def authorize
       unless User.find_by_id(session[:user_id])
       redirect_to root_url, :notice => "Por favor da click en ingresar"
       end 
   end
end
