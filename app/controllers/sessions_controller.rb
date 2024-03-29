class SessionsController < ApplicationController
   skip_before_filter :authorize
        def create
          omniauth = request.env["omniauth.auth"]
          user = User.find_by_provider_and_uid(omniauth["provider"], omniauth["uid"]) || User.create_with_omniauth(omniauth)
          puts user
          session[:user_id] = user.id
          redirect_to current_user, :notice => "Logueado!"
        end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Finalizada!"
  end
end
