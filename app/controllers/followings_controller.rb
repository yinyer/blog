class FollowingsController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @follow_users = user.following?(following_user)
  end

  def create
    @user = User.find(params[:user_id])
    following = current_user.followings.build(following_user: @user)
    @success = following.save
  end

end
