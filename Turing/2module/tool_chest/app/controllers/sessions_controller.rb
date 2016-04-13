class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])

    if user && user.authenticate(params[:session][:password])
      flash[:notice] = "Welcome #{user.username}"
      session[:user_id] = user.id
      redirect_to user_tools_path
    else
      flash[:error] = "Invalid Login"
      render :new
    end
  end

  def destroy
    session.clear

    redirect_to root_path
  end
end
