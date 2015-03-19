class Following < ActiveRecord::Base
  belongs_to :user
  has_many :followed_users, :through => :followings, :source => :following_user
end
