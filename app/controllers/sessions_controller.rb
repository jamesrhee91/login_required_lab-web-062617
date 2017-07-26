class SessionsController < ApplicationController

  def index

  end

  def create
    session[:name] = params[:name]
    if current_user.present?
      redirect_to '/secrets'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete(:name)
    redirect_to '/login'
  end

end
