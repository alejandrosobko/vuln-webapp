class UsersController < ApplicationController

  def new
  end

  def edit
    user = User.find_by_email(params[:id])
    user.email = params[:email]
    user.pass = params[:password]
    user.save

    redirect_to root_url
  end

  def create
    unless User.find_by_email(params[:email])
      user = User.new
      user.email = params[:email]
      user.pass = params[:password]
      user.save
    end

    redirect_to root_url
  end

end
