class UsersController < ApplicationController
  def index
    find_user
  end
  def show
    find_user
    @users = User.limit(20) 
    
  end
   def new
    @user = User.new(params[:user])
   
    @user=current_user.name
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user }
    end
  end
  def edit
     find_user
  end
  
  def videos
    find_user
  end
   
  
  def create
    @user = User.new
    @user.save!
    if @user.save!
      redirect_to @user
    else
      redirect_to root_path
    end
  end
  def update
   find_user
      if @user.update_attributes(params[:user])
        redirect_after_update
      else
        render :edit
      end
  end
  
  def find_user
    @user ||= User.find params[:id]
  end
  def check_edit_permissions!
     raise ActiveRecord::RecordNotFound if current_user == @user
     true
   end
   def redirect_after_update
     if @user != current_user
       redirect_to @user, :notice => t('flash.user_updated') 
     else
       redirect_to @user, :notice => t('flash.user_updated')
     end
   end
   
end
