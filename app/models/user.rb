class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.ransackable_attributes(auth_object = nil)
    %w[email] 
  end
  followability
  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
         has_many :followees, through: :followed_users
         has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
         has_many :followers, through: :following_users
  
  def unfollow(user)
    followerable_relationships.where(followable_id: user.id).destroy_all
  end

devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :posts, through: :likes
         has_many :likes
         
       
       
end
