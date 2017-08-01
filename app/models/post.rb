class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  acts_as_followable
  acts_as_followable
  acts_as_likeable
end
