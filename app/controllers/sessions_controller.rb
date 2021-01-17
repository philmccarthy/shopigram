class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Logged in as #{user.username}!"
      redirect_to root_path
    else
      flash[:error] = "Username or password doesn't match our records."
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    flash[:success] = "Logged out."
    redirect_to root_path
  end
end
