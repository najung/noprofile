class UsersController < ApplicationController
  
  
  def show
     @user = User.find_by(username: params[:username]).posts.order('created_at DESC')
     @users = User.find_by(username: params[:username])
  end
  
  
end
