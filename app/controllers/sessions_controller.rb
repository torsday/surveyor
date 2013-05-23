class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:current_user_id] = user.id
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
