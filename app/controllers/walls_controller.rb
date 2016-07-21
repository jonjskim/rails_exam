class WallsController < ApplicationController
  def index
  	@user = User.find(session[:user_id])
  	@messages = Message.all
  	@comments = Comment.all
  end
end
