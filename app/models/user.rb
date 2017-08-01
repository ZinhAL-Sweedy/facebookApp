class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true, length: {minimum: 5}
  validates :name, presence: true
  has_many :comments
  has_many :posts
  acts_as_follower
  acts_as_followable
  acts_as_liker
  acts_as_likeable

  # has_friendship
  # has_many :friendships
  # has_many :friends, :through => :friendships

  def friended
    # people who i have friended
    followees(User)
  end

  def friended_me
    # people who have friended me
    followers(User)
  end

  def liked_posts
    likees(Post)
  end

  def liked_comments
    likees(Comment)
  end
  def unliked_comments
    if (likees(Comment))
      unlike!(Comment)
    end
  end
end
